#include "serialconfiguration.h"

SerialConfiguration::SerialConfiguration(QObject *parent)
    : QObject{parent}
{
    _MCU= new QSerialPort();
    _microcontrollerFoundOnConnection = false;
    _microcontrollerConnected = false;
    _serialBuffer = "";

    // ------
    timer = new QTimer(this);
    // ------
    _pyroA1Color = _pyroDeactivatedColor;
    _pyroA2Color = _pyroDeactivatedColor;
    _pyroA3Color = _pyroDeactivatedColor;
    _pyroA4Color = _pyroDeactivatedColor;
    _pyroA5Color = _pyroDeactivatedColor;

    _pyroB1Color = _pyroDeactivatedColor;
    _pyroB2Color = _pyroDeactivatedColor;
    _pyroB3Color = _pyroDeactivatedColor;
    _pyroB4Color = _pyroDeactivatedColor;
    _pyroB5Color = _pyroDeactivatedColor;
    // ------
    counter = 0;
}

QList<QString> SerialConfiguration::searchPortInfo()
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

void SerialConfiguration::savePortConnection(QString portDescription)
{
    _portDescriptionIntendedConnection = portDescription;
}

void SerialConfiguration::microcontrollerConnection()
{
    foreach (const QSerialPortInfo &serial_info, QSerialPortInfo::availablePorts()) { // Find each microcontroller available for connection
        // Port verify
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
            _MCU->setBaudRate(QSerialPort::Baud115200); // It has to be the same as in arduino
            _MCU->setDataBits(QSerialPort::Data8);
            _MCU->setParity(QSerialPort::NoParity);
            _MCU->setStopBits(QSerialPort::OneStop);
            _MCU->setFlowControl(QSerialPort::NoFlowControl);
            _MCU->setReadBufferSize(16384);
            _MCU->open(QIODevice::ReadWrite);

            //Confirm connection
            if (_MCU->isOpen()) {
                qDebug() << "Conexión con" << _portName << " exitosa";
                _microcontrollerConnected = true;
                // Connect the signal that data arrives through the serial with the slot to read the data
                connect(_MCU, SIGNAL(readyRead()), this, SLOT(serialRead()));
            } else {
                qDebug() << "No se pudo conectar con " << _portName;
                _microcontrollerConnected = false;
            }
            break;            
        } else {
            _microcontrollerFoundOnConnection = false;  // If it does not find the microcontroller selected by the user
        }
    }        
}

void SerialConfiguration::serialClose()
{
    _MCU->close();
    _microcontrollerConnected = false;

    emit microcontrollerConnectionStatus(_microcontrollerConnected); // Emits a signal with the connection status
    qDebug() << "Conexión terminada";
}

void SerialConfiguration::serialRead()
{
    if (!_MCU->isReadable()) {
        return;
    }

    // Read all available data
    _serialData = _MCU->readAll();
    _serialBuffer += QString::fromStdString(_serialData.toStdString());

    // Process complete messages
    while (_serialBuffer.contains("\r\n")) {
        // Extract the first complete message
        int endIndex = _serialBuffer.indexOf("\r\n");
        QString completeMessage = _serialBuffer.left(endIndex);
        _serialBuffer = _serialBuffer.mid(endIndex + 2); // Remove the processed message from the buffer

        QList<QString> data = completeMessage.split(",");

        int cat = data[1].toInt();
        if (cat == 1){
            data.removeFirst();
            data.removeFirst();
            data.removeFirst();
            data.removeLast();
            data.removeLast();

            _coreDataList = data;
            coreDataUpdate();

        }else if(cat == 2){
            data.removeFirst();
            data.removeFirst();
            data.removeLast();

            _pyroContDataList = data;
            pyroContDataUpdate();
        }else if(cat == 6){
            data.removeFirst();
            data.removeFirst();
            data.removeLast();

            _gpsDataList = data;
            gpsDataUpdate();
        }
    }
}

void SerialConfiguration::sendData(QString data) {     // To send data to the arduino
    if(_MCU -> isWritable()){  // Make sure that is possible to write through the serial port
        _MCU -> write(data.toUtf8());  // Send the data
    } else {
        qDebug()<<"No se pueden enviar los datos";
    }
}





















QList<QString> SerialConfiguration::getCoreDataFull()
{
    return _coreDataList;
}

float SerialConfiguration::getCoreDataItem(int pos)
{
    return _coreDataList[pos].toFloat();
}

QList<QString> SerialConfiguration::getGPSDataFull()
{
    return _gpsDataList;
}

float SerialConfiguration::getGPSDataItem(int pos)
{
    return _gpsDataList[pos].toFloat();
}

float SerialConfiguration::getLastAccelXValue()
{
    return _accelXDataListFloat.last();
}

float SerialConfiguration::getLastAccelYValue()
{
    return _accelYDataListFloat.last();
}

float SerialConfiguration::getLastAccelZValue()
{
    return _accelZDataListFloat.last();
}

float SerialConfiguration::getAbsAccelMinValue()
{
    return _accelAbsMinValue;
}

float SerialConfiguration::getAbsAccelMaxValue()
{
    return _accelAbsMaxValue;
}

float SerialConfiguration::getAngleXLastValue()
{
    return _angleXLastValue;
}

float SerialConfiguration::getAngleYLastValue()
{
    return _angleYLastValue;
}

float SerialConfiguration::getAngleZLastValue()
{
    return _angleZLastValue;
}

float SerialConfiguration::getLastCurrentAltValue()
{
    return _currentAltDataListFloat.last();
}

float SerialConfiguration::getCurrentAltMinValue()
{
    return _currentAltMinListValue;
}

float SerialConfiguration::getCurrentAltMaxValue()
{
    return _currentAltMaxListValue;
}

float SerialConfiguration::getApogeeAltLastValue()
{
    return _apogeeAltLastValue;
}

float SerialConfiguration::getPressureAltLastValue()
{
    return _pressureAltLastValue;
}

float SerialConfiguration::getVelLastValue()
{
    return _velLastValue;
}

float SerialConfiguration::getNewerLatLastValue()
{
    return _newerLatValueList.last();
}

float SerialConfiguration::getOlderLatLastValue()
{
    return _olderLatValueList.last();
}

float SerialConfiguration::getNewerLonLastValue()
{
    return _newerLonValueList.last();
}

float SerialConfiguration::getOlderLonLastValue()
{
    return _olderLonValueList.last();
}

float SerialConfiguration::getLatMinValue()
{
    return _latMinValue;
}

float SerialConfiguration::getLatMaxValue()
{
    return _latMaxValue;
}

float SerialConfiguration::getLonMinValue()
{
    return _lonMinValue;
}

float SerialConfiguration::getLonMaxValue()
{
    return _lonMaxValue;
}

QString SerialConfiguration::getPyroA1Color()
{
    return _pyroA1Color;
}

QString SerialConfiguration::getPyroA2Color()
{
    return _pyroA2Color;
}

QString SerialConfiguration::getPyroA3Color()
{
    return _pyroA3Color;
}

QString SerialConfiguration::getPyroA4Color()
{
    return _pyroA4Color;
}

QString SerialConfiguration::getPyroA5Color()
{
    return _pyroA5Color;
}

QString SerialConfiguration::getPyroB1Color()
{
    return _pyroB1Color;
}

QString SerialConfiguration::getPyroB2Color()
{
    return _pyroB2Color;
}

QString SerialConfiguration::getPyroB3Color()
{
    return _pyroB3Color;
}

QString SerialConfiguration::getPyroB4Color()
{
    return _pyroB4Color;
}

QString SerialConfiguration::getPyroB5Color()
{
    return _pyroB5Color;
}

int SerialConfiguration::xDat()
{
    return (rand() % 5) + 1;
}

int SerialConfiguration::actualTimeUTC()
{
    //qint64 timestamp = QDateTime::currentMSecsSinceEpoch(); // Current timestamp in milliseconds
    //double doubleTimestamp = static_cast<double>(timestamp);  // Cast to double
    //return doubleTimestamp;
    return counter;
}

int SerialConfiguration::prevTimeUTC()
{
    //qint64 timestamp = QDateTime::currentMSecsSinceEpoch(); // Current timestamp in milliseconds
    //double doubleTimestamp = static_cast<double>(timestamp -60000.0);  // Cast to double
    //return doubleTimestamp;  // Subtract 1 minute (60000 ms) as double
    return counter - _graphsMaxMemory;
}
int SerialConfiguration::actualTime()
{
    //timestamp = QDateTime::currentMSecsSinceEpoch();
    //return timestamp;
    return counter;
}

int SerialConfiguration::getGraphsMaxMemory()
{
    return _graphsMaxMemory;
}

void SerialConfiguration::setGraphsMaxMemory(int memory)
{
    _graphsMaxMemory = memory;
}

void SerialConfiguration::coreDataUpdate()
{

    /* _coreDataListAx
     *  0   1   2   3   4   5   6   7   8   9
     *  Ax  Ay  Az  Ex  Ey  Ez  Ac  Ap  Apr Vel
    */

    // Accel

    _accelXDataListFloat.append(_coreDataList[0].toFloat());
    _accelYDataListFloat.append(_coreDataList[1].toFloat());
    _accelZDataListFloat.append(_coreDataList[2].toFloat());

    if (_accelXDataListFloat.count() > _graphsMaxMemory){
        _accelXDataListFloat.removeFirst();
    }
    if (_accelYDataListFloat.count() > _graphsMaxMemory){
        _accelYDataListFloat.removeFirst();
    }
    if (_accelZDataListFloat.count() > _graphsMaxMemory){
        _accelZDataListFloat.removeFirst();
    }

    auto min = std::min_element(_accelXDataListFloat.begin(), _accelXDataListFloat.end());
    auto max = std::max_element(_accelXDataListFloat.begin(), _accelXDataListFloat.end());

    _accelXMinListValue = *min;
    _accelXMaxListValue = *max;

    min = std::min_element(_accelYDataListFloat.begin(), _accelYDataListFloat.end());
    max = std::max_element(_accelYDataListFloat.begin(), _accelYDataListFloat.end());

    _accelYMinListValue = *min;
    _accelYMaxListValue = *max;

    min = std::min_element(_accelZDataListFloat.begin(), _accelZDataListFloat.end());
    max = std::max_element(_accelZDataListFloat.begin(), _accelZDataListFloat.end());

    _accelZMinListValue = *min;
    _accelZMaxListValue = *max;

    _accelAbsMinValue = std::min({_accelXMinListValue, _accelYMinListValue, _accelZMinListValue});
    _accelAbsMaxValue = std::max({_accelXMaxListValue, _accelYMaxListValue, _accelZMaxListValue});

    // Angles

    _angleXLastValue =_coreDataList[3].toFloat();
    _angleYLastValue =_coreDataList[4].toFloat();
    _angleZLastValue =_coreDataList[5].toFloat();

    // Altitude
    _currentAltDataListFloat.append(_coreDataList[6].toFloat());

    if (_currentAltDataListFloat.count() > _graphsMaxMemory){
        _currentAltDataListFloat.removeFirst();

    }

    min = std::min_element(_currentAltDataListFloat.begin(), _currentAltDataListFloat.end());
    max = std::max_element(_currentAltDataListFloat.begin(), _currentAltDataListFloat.end());

    _currentAltMinListValue = *min;
    _currentAltMaxListValue = *max;

    _apogeeAltLastValue = _coreDataList[7].toFloat();
    _pressureAltLastValue = _coreDataList[8].toFloat();
    _velLastValue = _coreDataList[9].toFloat();

    // Speed
    counter ++;

    emit coreDataReady();
}

void SerialConfiguration::pyroContDataUpdate()
{
    /* _pyroContDataList
     *  0   1   2   3   4   5   6   7   5   9
     *  A1  A2  A3  A4  A5  B1  B2  B3  B4  B5
    */
    if (_pyroContDataList[0].toInt() == 1){
        _pyroA1Color = _pyroActivatedColor;
    }else{
        _pyroA1Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[1].toInt() == 1){
        _pyroA2Color = _pyroActivatedColor;
    }else{
        _pyroA2Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[2].toInt() == 1){
        _pyroA3Color = _pyroActivatedColor;
    }else{
        _pyroA3Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[3].toInt() == 1){
        _pyroA4Color = _pyroActivatedColor;
    }else{
        _pyroA4Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[4].toInt() == 1){
        _pyroA5Color = _pyroActivatedColor;
    }else{
        _pyroA5Color = _pyroDeactivatedColor;
    }

    if (_pyroContDataList[5].toInt() == 1){
        _pyroB1Color = _pyroActivatedColor;
    }else{
        _pyroB1Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[6].toInt() == 1){
        _pyroB2Color = _pyroActivatedColor;
    }else{
        _pyroB2Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[7].toInt() == 1){
        _pyroB3Color = _pyroActivatedColor;
    }else{
        _pyroB3Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[8].toInt() == 1){
        _pyroB4Color = _pyroActivatedColor;
    }else{
        _pyroB4Color = _pyroDeactivatedColor;
    }
    if (_pyroContDataList[9].toInt() == 1){
        _pyroB5Color = _pyroActivatedColor;
    }else{
        _pyroB5Color = _pyroDeactivatedColor;
    }

    emit pyroContDataReady();

}

void SerialConfiguration::gpsDataUpdate()
{
    /* _coreDataList
     *  0   1
     *  Lat Lon
    */

    _newerLatValueList.append(_coreDataList[0].toFloat());
    if (_newerLatValueList.count()>_graphsMaxMemory/2){
        _olderLatValueList.append(_newerLatValueList[0]);
        _newerLatValueList.removeFirst();
        if(_olderLatValueList.count()>_graphsMaxMemory/2){
            _olderLatValueList.removeFirst();
        }
    }

    _newerLonValueList.append(_coreDataList[1].toFloat());
    if (_newerLonValueList.count()>_graphsMaxMemory/2){
        _olderLonValueList.append(_newerLonValueList[0]);
        _newerLonValueList.removeFirst();
        if(_olderLonValueList.count()>_graphsMaxMemory/2){
            _olderLonValueList.removeFirst();
        }
    }


    auto min1 = std::min_element(_newerLatValueList.begin(), _newerLatValueList.end());
    auto max1 = std::max_element(_newerLatValueList.begin(), _newerLatValueList.end());

    if (_olderLatValueList.count()>0){
        auto min2 = std::min_element(_olderLatValueList.begin(), _olderLatValueList.end());
        auto max2 = std::max_element(_olderLatValueList.begin(), _olderLatValueList.end());

        float min = std::min({*min1, *min2});
        float max = std::max({*max1, *max2});

        _latMinValue = min;
        _latMaxValue = max;
    }else{
        _latMinValue = *min1;
        _latMaxValue = *max1;
    }

    min1 = std::min_element(_newerLonValueList.begin(), _newerLonValueList.end());
    max1 = std::max_element(_newerLonValueList.begin(), _newerLonValueList.end());

    if (_olderLonValueList.count()>0){
        auto min2 = std::min_element(_olderLonValueList.begin(), _olderLonValueList.end());
        auto max2 = std::max_element(_olderLonValueList.begin(), _olderLonValueList.end());

        float max = std::max({*max1, *max2});
        float min = std::min({*min1, *min2});

        _lonMinValue = min;
        _lonMaxValue = max;

    }else{
        _lonMinValue = *min1;
        _lonMaxValue = *max1;
    }

    emit gpsDataReady();
}
