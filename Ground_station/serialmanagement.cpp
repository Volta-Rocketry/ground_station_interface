#include "serialmanagement.h"

SerialManagement::SerialManagement(QObject *parent)
    : QObject{parent}
{
    _MCU= new QSerialPort();
    _microcontrollerFoundOnConnection = false;
    _microcontrollerConnected = false;
    _serialBuffer = "";

    // -- TIMERS --
    //setupTimer(timerFLightTime, 500, "timerFLightTime");
}

QList<QString> SerialManagement::searchPortInfo()
{
    QList<QString> availableSerialNames;
    QList<QString> availableSerialPorts;

    foreach (const QSerialPortInfo &port, QSerialPortInfo::availablePorts()) {
        if (port.description() != ""){
            availableSerialNames.append(port.description());
            availableSerialPorts.append(port.portName());
        }
    }

    qDebug() << availableSerialNames;
    qDebug() << availableSerialPorts;

    return availableSerialNames;
}

void SerialManagement::savePortConnection(QString portDescription)
{
    _portDescriptionIntendedConnection = portDescription;
}

void SerialManagement::microcontrollerConnection()
{
    if (_portDescriptionIntendedConnection == "Test Mode"){
        timerTestMode->start();
    }else{

        qDebug() << "Entro CCC";

        if (QSerialPortInfo::availablePorts().size() > 0){
            foreach (const QSerialPortInfo &serial_info, QSerialPortInfo::availablePorts()) { // Find each microcontroller available for connection
                if (serial_info.description() == _portDescriptionIntendedConnection) {    // If it detects the microcontroller selected by the user, it gets the data
                    // Update important port parameters
                    _portDescription = _portDescriptionIntendedConnection;
                    _portName = serial_info.portName();
                    _vendorId = serial_info.vendorIdentifier();
                    _productId = serial_info.productIdentifier();

                    _microcontrollerFoundOnConnection = true;

                    qDebug() << "Nombre: " << _portDescription;
                    qDebug() << "Puerto: " << _portName;
                    qDebug() << "Vendor ID: " << _vendorId;
                    qDebug() << "Product ID: " << _productId ;

                    // Start connection
                    _MCU->setPortName(_portName);

                    /* Modes
             * 0 -> 115200
             * 1 -> 9600
             * 2 -> 1200
             * 3 -> 2400
             * 4 -> 4800
             * 5 -> 19200
             * 6 -> 38400
             * 7 -> 57600
            */

                    switch (_baudRateMode){
                    case 0:
                        _MCU->setBaudRate(QSerialPort::Baud115200);
                        break;
                    case 1:
                        _MCU->setBaudRate(QSerialPort::Baud9600);
                        break;
                    case 2:
                        _MCU->setBaudRate(QSerialPort::Baud1200);
                        break;
                    case 3:
                        _MCU->setBaudRate(QSerialPort::Baud2400);
                        break;
                    case 4:
                        _MCU->setBaudRate(QSerialPort::Baud4800);
                        break;
                    case 5:
                        _MCU->setBaudRate(QSerialPort::Baud19200);
                        break;
                    case 6:
                        _MCU->setBaudRate(QSerialPort::Baud38400);
                        break;
                    case 7:
                        _MCU->setBaudRate(QSerialPort::Baud38400);
                        break;
                    }

                    qDebug() << _baudRateMode;

                    _MCU->setDataBits(QSerialPort::Data8);
                    _MCU->setParity(QSerialPort::NoParity);
                    _MCU->setStopBits(QSerialPort::OneStop);
                    _MCU->setFlowControl(QSerialPort::NoFlowControl);
                    _MCU->setReadBufferSize(16384);
                    //Confirm connection
                    _MCU->open(QIODevice::ReadWrite);

                    if (_MCU->isOpen()) {
                        if(_MCU->isReadable()){
                            if(_MCU->isWritable()){
                                _microcontrollerConnected = true;
                                qDebug() << "CONEXIÓN SUPER EXTIOSA";
                                connect(_MCU, SIGNAL(readyRead()), this, SLOT(serialRead()));
                            }else{
                                _microcontrollerConnected = false;
                                emit portIsNotWritable();
                            }
                        }else{
                            _microcontrollerConnected = false;
                            emit portIsNotReadable();
                        }
                    }else{
                        _microcontrollerConnected = false;
                        emit portIsNotOpen();
                    }
                    break;
                }
            }
        }else{
            _microcontrollerFoundOnConnection = false;  // If it does not find the microcontroller selected by the user
            emit portNotFound();
        }
    }
}

void SerialManagement::serialClose()
{
    _MCU->close();
    _microcontrollerConnected = false;

    emit microcontrollerConnectionStatus(_microcontrollerConnected); // Emits a signal with the connection status
    qDebug() << "Conexión terminada";
}

void SerialManagement::coreDataUpdate()
{
    /* _coreDataListAx
     *  0   1   2   3    4    5    6    7   8   9
     *  Ax  Ay  Az  Anx  Any  Anz  Alt  Lat Lon Vel
    */
    qDebug() << "LISTA ES: " << _coreDataList;

    // Accel
    qDebug() << "Enter -- 1";
    _accelXDataListFloat.append(_coreDataList[0].toFloat());
    _accelYDataListFloat.append(_coreDataList[1].toFloat());
    _accelZDataListFloat.append(_coreDataList[2].toFloat());

    if (_accelXDataListFloat.count() > _maxDataMemory){
        _accelXDataListFloat.removeFirst();
    }
    if (_accelYDataListFloat.count() > _maxDataMemory){
        _accelYDataListFloat.removeFirst();
    }
    if (_accelZDataListFloat.count() > _maxDataMemory){
        _accelZDataListFloat.removeFirst();
    }

    qDebug() << "Enter -- 2";

    // Angles
    _angleXDataListFloat.append(_coreDataList[3].toFloat());
    _angleYDataListFloat.append(_coreDataList[4].toFloat());
    _angleZDataListFloat.append(_coreDataList[5].toFloat());

    if (_angleXDataListFloat.count() > _maxDataMemory){
        _angleXDataListFloat.removeFirst();
    }
    if (_angleYDataListFloat.count() > _maxDataMemory){
        _angleYDataListFloat.removeFirst();
    }
    if (_angleZDataListFloat.count() > _maxDataMemory){
        _angleZDataListFloat.removeFirst();
    }

    qDebug() << "Enter -- 3";

    // Altitude
    _currentAltDataListFloat.append(_coreDataList[6].toFloat());

    if (_currentAltDataListFloat.count() > _maxDataMemory){
        _currentAltDataListFloat.removeFirst();
    }

    qDebug() << "Enter -- 4";

    // GPS
    _newerLatValueList.append(_coreDataList[7].toFloat());
    if (_newerLatValueList.count()>_maxDataMemory/2){
        _olderLatValueList.append(_newerLatValueList[0]);
        _newerLatValueList.removeFirst();
        if(_olderLatValueList.count()>_maxDataMemory/2){
            _olderLatValueList.removeFirst();
        }
    }

    qDebug() << "Enter -- 5";

    _newerLonValueList.append(_coreDataList[8].toFloat());
    if (_newerLonValueList.count()>_maxDataMemory/2){
        _olderLonValueList.append(_newerLonValueList[0]);
        _newerLonValueList.removeFirst();
        if(_olderLonValueList.count()>_maxDataMemory/2){
            _olderLonValueList.removeFirst();
        }
    }

    qDebug() << "Enter -- 6";


    // Speed
    _currentSpeedDataListFloat.append(_coreDataList[9].toFloat());

    if (_currentSpeedDataListFloat.count() > _maxDataMemory){
        _currentSpeedDataListFloat.removeFirst();
    }

    qDebug() << "Enter -- 7";

    // Status
    telemetryStatus = _coreDataList[10].toInt();
    qDebug() << "Enter -- 8";


    //_coreLastUpdatedTime = getCurrentTimeMSmString(2);
    //_coreLastUpdatedSeconds = getCurrentTimeSFloat();

    qDebug() << "CoreDataUpdated";
    emit coreDataReady();

}

int SerialManagement::getTelemetryStatus()
{
    return telemetryStatus;
}

int SerialManagement::getEstApogeeAlt()
{
    return expectedApogeeAlt;
}

int SerialManagement::getEstMainAlt()
{
    return expectedMainAlt;
}

void SerialManagement::endConnection()
{
    serialClose();

    // RESET VARIABLES TO DEFAULT
    _coreDataList.clear();
    _accelXDataListFloat.clear();
    _accelYDataListFloat.clear();
    _accelZDataListFloat.clear();
    _angleXDataListFloat.clear();
    _angleYDataListFloat.clear();
    _angleZDataListFloat.clear();
    _currentAltDataListFloat.clear();
    _newerLatValueList.clear();
    _newerLonValueList.clear();
    _olderLatValueList.clear();
    _olderLonValueList.clear();
    _currentSpeedDataListFloat.clear();
}

void SerialManagement::setBaudRateMode(int mode)
{
    /* Modes
     * 0 -> 115200
     * 1 -> 9600
     * 2 -> 1200
     * 3 -> 2400
     * 4 -> 4800
     * 5 -> 19200
     * 6 -> 38400
     * 7 -> 57600
    */

    _baudRateMode = mode;
}

void SerialManagement::serialRead()
{
    qDebug() << "EntroSerialRead";

    if (timerBeforeRun < timesBeforeRun){
        timerBeforeRun++;
        qDebug() << "No estoy leyendo";
        return;
    }

    qDebug() << "Ya estoy leyendo";

    if (!_MCU->isReadable()) {
        return;
    }

    // Read all available data
    _serialData = _MCU->readAll();
    _serialBuffer += QString::fromStdString(_serialData.toStdString());
    qDebug() << "This is the serial buffer" << _serialBuffer;

    // Process complete messages
    while (_serialBuffer.contains("\r\n")) {
        // Extract the first complete message
        int endIndex = _serialBuffer.indexOf("\r\n");
        QString completeMessage = _serialBuffer.left(endIndex);
        qDebug() << "This is the complete message extracted: " << completeMessage;
        _serialBuffer = _serialBuffer.mid(endIndex + 2); // Remove the processed message from the buffer

        QList<QString> data = completeMessage.split(",");
        qDebug() << "Data Splited";
        int cat = data[1].toInt();
        if (cat == 1){
            data.removeFirst();
            data.removeFirst();
            data.removeFirst();
            data.removeLast();
            data.removeLast();

            _coreDataList = data;
            qDebug()<<"Data for update Core";
            coreDataUpdate();

        }else if(cat == 2){
            telemetryStatus = data.first().toInt();
            //telemetryStatusUpdate();

            //_pyroContDataList = data;
            //pyroContDataUpdate();
        }else if(cat == 3){

            data.removeFirst();
            data.removeFirst();
            data.removeLast();

            //_chamberTempDataList = data;
            //chamberTempDataUpdate();

        }else if(cat == 4){
            data.removeFirst();
            data.removeFirst();
            data.removeLast();

            //_otherDataList = data;

        }else if(cat == 6){
            data.removeFirst();
            data.removeFirst();
            data.removeLast();

            //_gpsDataList = data;
            //gpsDataUpdate();
        }
    }
}

void SerialManagement::sendData(QString data) {     // To send data to the arduino
    if(_MCU -> isWritable()){  // Make sure that is possible to write through the serial port
        _MCU -> write(data.toUtf8());  // Send the data
        qDebug() << "Se envio " << data;
    } else {
        emit dataNotSent();
    }
}

float SerialManagement::getLastDataInList(int list, int pos)
{
    /*
     * Get the data in the position specified:
     * Use 1 for access the first data in the array (newest value)
     * Use -1 for acess the last data in the array (oldest value)
     * Use any oyjer number to acess the data in that pos (the greater the value, the oldest it is)
     *
     * The lists that can be acess are
     * 1 for Accel in X
     * 2 for Accel in Y
     * 3 for Accel in Z
     * 4 for Angle in X
     * 4 for Angle in Y
     * 6 for Angle in Z
     * 7 for current Alt
     * 8 for newer Lat values
     * 9 for newer Lon values
     * 10 for older Lat values
     * 11 for older Lon values
     * 12 for current speed

    */

    const QList<float>* dataList = nullptr;

    switch (list) {
    case 1: dataList = &_accelXDataListFloat; break;
    case 2: dataList = &_accelYDataListFloat; break;
    case 3: dataList = &_accelZDataListFloat; break;
    case 4: dataList = &_angleXDataListFloat; break;
    case 5: dataList = &_angleYDataListFloat; break;
    case 6: dataList = &_angleZDataListFloat; break;
    case 7: dataList = &_currentAltDataListFloat; break;
    case 8: dataList = &_olderLatValueList; break;
    case 9: dataList = &_olderLonValueList; break;
    case 10: dataList = &_newerLatValueList; break;
    case 11: dataList = &_newerLonValueList; break;
    case 12: dataList = &_currentSpeedDataListFloat; break;
    default:
        emit cannotAcessList();
        return 0.0f;
    }

    if (dataList->isEmpty()) {
        emit cannotAcessDataInList();
        return 0.0f;
    }

    if (pos == -1){
        return (*dataList).last();
    }else if (pos >0 && pos< dataList->size()){
        return (*dataList).at(pos-1);
    }else{
        emit cannotAcessDataInList();
        return 0.0f;
    }
}

float SerialManagement::getMaxMinDataInList(int list, bool maxBool)
{
    const QList<float>* dataList = nullptr;

    switch (list) {
    case 1: dataList = &_accelXDataListFloat; break;
    case 2: dataList = &_accelYDataListFloat; break;
    case 3: dataList = &_accelZDataListFloat; break;
    case 4: dataList = &_angleXDataListFloat; break;
    case 5: dataList = &_angleYDataListFloat; break;
    case 6: dataList = &_angleZDataListFloat; break;
    case 7: dataList = &_currentAltDataListFloat; break;
    case 8: dataList = &_olderLatValueList; break;
    case 9: dataList = &_olderLonValueList; break;
    case 10: dataList = &_newerLatValueList; break;
    case 11: dataList = &_newerLonValueList; break;
    case 12: dataList = &_currentSpeedDataListFloat; break;
    default:
        emit cannotAcessList();
        return 0.0f;
    }

    if (dataList->isEmpty()) {
        emit cannotAcessDataInList();
        return 0.0f;
    }

    if (maxBool){
        auto max = std::max_element(dataList->begin(), dataList->end());
        return *max;
    }else{
        auto min = std::min_element(dataList->begin(), dataList->end());
        return *min;
    }
}

float SerialManagement::getAbsMaxMinDataInLists(QList<int> lists, bool maxBool)
{
    QList<float> values;

    for (int list : lists) {
        switch (list) {
        case 1: values.append(_accelXDataListFloat); break;
        case 2: values.append(_accelYDataListFloat); break;
        case 3: values.append(_accelZDataListFloat); break;
        case 4: values.append(_angleXDataListFloat); break;
        case 5: values.append(_angleYDataListFloat); break;
        case 6: values.append(_angleZDataListFloat); break;
        case 7: values.append(_currentAltDataListFloat); break;
        case 8: values.append(_newerLatValueList); break;
        case 9: values.append(_newerLonValueList); break;
        case 10: values.append(_olderLatValueList); break;
        case 11: values.append(_olderLonValueList); break;
        case 12: values.append(_currentSpeedDataListFloat); break;
        default:
            emit cannotAcessList();
            return 0.0f;
        }
    }

    if (values.isEmpty()) {
        emit cannotAcessDataInList();
        return 0.0f;
    }

    if (maxBool){
        auto max = std::max_element(values.begin(), values.end());
        values.clear();
        return *max;
    }else{
        auto min = std::min_element(values.begin(), values.end());
        values.clear();
        return *min;
    }
}

float SerialManagement::getDataConvertedImperial(int dataWanted)
{
/*
    FUnction to get the data converted from SI to imperial units

    1 -> Last alttiude value
    2 -> Last speed value
*/
    switch(dataWanted){
        case 1:
        return getLastDataInList(7,-1)*3.28084;
            break;
        case 2:
            return getLastDataInList(12,-1)*3.28084;
    }
}

void SerialManagement::flightTimerStart()
{
    //startTimer(timer1, "Timer1");
}

void SerialManagement::flightTimerStop()
{
    //startTimer(timer1, "Timer1");
}

void SerialManagement::testMode()
{

}

float SerialManagement::getCurrentTimeSFloat()
{
    QDateTime dateTime = QDateTime::currentDateTimeUtc();
    qint64 timestamp = QDateTime::currentMSecsSinceEpoch();

    int minutes = dateTime.time().minute();
    int seconds = dateTime.time().second();
    int milliseconds = timestamp % 1000;

    // Convertir a segundos como número real
    return (minutes * 60 + seconds + milliseconds / 1000.0) - firstTimeSeconds;
}

QString SerialManagement::getCurrentTimeMSmString(int format = 0)
{
    /* Format
     * 0 = Minutes, seconds, miliseconds
     * 1 = Hours, Minutes, Seconds, miliseconds
     * 2 = Hours, Minutes, Seconds

    */
    QDateTime dateTime = QDateTime::currentDateTimeUtc();
    qint64 timestamp = QDateTime::currentMSecsSinceEpoch();

    int hours = dateTime.time().hour();
    int minutes = dateTime.time().minute();
    int seconds = dateTime.time().second();
    int milliseconds = timestamp % 1000;

    if (format == 0){
        return QString::asprintf("%02d:%02d:%03d", minutes, seconds, milliseconds);
    }

    if (format == 1){
        return QString::asprintf("%02d:%02d:%02d:%03d", hours, minutes, seconds, milliseconds);
    }

    if (format == 2){
        return QString::asprintf("%02d:%02d:%02d", hours, minutes, seconds);
    }

    else{
        return "00:00:00";
    }
}
