#include "serialconfiguration.h"

SerialConfiguration::SerialConfiguration(QObject *parent)
    : QObject{parent}
{
    microcontroller = new QSerialPort();
    microcontrollerAvailable = false;
    microcontrollerConnected = false;
    serialBuffer = "";

    // ------
    timer = new QTimer(this);

    counter = 0;

}

QList<QString> SerialConfiguration::searchPortInfo()
{
    qDebug() << "Search Port Info --- Start ---";
    microcontrollerNames.clear();
    microcontrollerPorts.clear();

    foreach (const QSerialPortInfo &port, QSerialPortInfo::availablePorts()) {
        microcontrollerNames.append(port.description());
        microcontrollerPorts.append(port.portName());
        qDebug() << port.portName();
        qDebug() << port.description();
    }

    qDebug() << "Search Port Info --- End ---";
    return microcontrollerNames;
}


void SerialConfiguration::microcontrollerConnection()
{
    qDebug() << "Micro Connect --- Start ---";

    foreach (const QSerialPortInfo &serial_info, QSerialPortInfo::availablePorts()) { // Find each microcontroller available for connection
        qDebug() << serial_info.description()<< "," << portDescriptionConnection;
        if (serial_info.description() == portDescriptionConnection) {    // If it detects the microcontroller selected by the user, it gets the data
            microcontrollerName = portDescriptionConnection;
            portName = serial_info.portName();
            vendorId = serial_info.vendorIdentifier();
            vendorId = serial_info.productIdentifier();
            microcontrollerAvailable = true;   // Confirm that the microcontroller is available
            qDebug() << "Nombre: " << portDescriptionConnection;
            qDebug() << "Puerto: " << serial_info.portName();
            qDebug() << "Vendor ID: " << serial_info.vendorIdentifier();
            qDebug() << "Product ID: " << serial_info.productIdentifier();
            break;
        } else {
            microcontrollerAvailable = false;  // If it does not find the microcontroller selected by the user
        }
    }

    if (microcontrollerAvailable) {    // If microcontroller confirmation is available, initialize the connection
        qDebug() << "Se encontró un " << portDescriptionConnection << ", iniciando conexión";
        microcontrollerInit(portDescriptionConnection);  // Initiates the connection with the microcontroller selected by the user
    } else {
        qDebug() << "No se encontró a " << portDescriptionConnection;    // The microcontroller selected by the user was not found, the message is returned
        emit microcontrollerConnectionStatus(false);            // Emits a signal with the connection status
    }

    qDebug() << "Micro Connect --- End ---";
}

QList<QString> SerialConfiguration::getCoreDataFull()
{
    return coreDataList;
}

float SerialConfiguration::getCoreDataItem(int pos)
{
    qDebug() << coreDataList[pos].toFloat();
    return coreDataList[pos].toFloat();
}

QList<QString> SerialConfiguration::getGPSDataFull()
{
    return gpsDataList;
}

float SerialConfiguration::getGPSDataItem(int pos)
{
    qDebug() <<gpsDataList[pos].toFloat();
    return gpsDataList[pos].toFloat();
}

void SerialConfiguration::microcontrollerInit(QString port_selection)
{
    microcontroller->setPortName(portName);
    microcontroller->setBaudRate(QSerialPort::Baud115200); // It has to be the same as in arduino
    microcontroller->setDataBits(QSerialPort::Data8);
    microcontroller->setParity(QSerialPort::NoParity);
    microcontroller->setStopBits(QSerialPort::OneStop);
    microcontroller->setFlowControl(QSerialPort::NoFlowControl);
    microcontroller->setReadBufferSize(16384);
    microcontroller->open(QIODevice::ReadWrite);

    if (microcontroller->isOpen()) { // If it could connect to the microcontroller, specify the message
        qDebug() << "Conexión con" << port_selection << " exitosa";
        microcontrollerConnected = true;

        connect(microcontroller, SIGNAL(readyRead()), this, SLOT(serialRead())); // Connect the signal that data arrives through the serial with the slot to read the data
        qDebug() << "Tamaño del buffer" << microcontroller->readBufferSize();
    } else {
        qDebug() << "No se pudo conectar con " << port_selection;
        microcontrollerConnected = false;
    }

    emit microcontrollerConnectionStatus(microcontrollerConnected); // Emits a signal with the connection status

    //connect(timer, &QTimer::timeout, this, &SerialConfiguration::serialRead);
    //timer->start(1000);
}


void SerialConfiguration::serialRead()
{
    //QDateTime currentTime = QDateTime::currentDateTime();
    //QString formattedTime = currentTime.toString("HH:mm:ss.zzz");
    //qDebug() << formattedTime << "serialRead --- Start ---";

    if (!microcontroller->isReadable() || !microcontrollerConnected) {
        return;
    }

    // Read all available data
    serialData = microcontroller->readAll();
    serialBuffer += QString::fromStdString(serialData.toStdString());

    // Process complete messages
    while (serialBuffer.contains("\r\n")) {
        // Extract the first complete message
        int endIndex = serialBuffer.indexOf("\r\n");
        QString completeMessage = serialBuffer.left(endIndex);
        serialBuffer = serialBuffer.mid(endIndex + 2); // Remove the processed message from the buffer

        // Process the complete message
        //qDebug() << "Complete Message:" << completeMessage;

        // Optionally parse the message
        QList<QString> elements = completeMessage.split(",");
        //qDebug() << "Parsed Elements:" << elements;

        // Cat split
        int cat = elements[1].toInt();
        if (cat == 2){
            //qDebug() << "Core";
            elements.removeFirst();
            elements.removeFirst();
            elements.removeFirst();
            elements.removeLast();
            elements.removeLast();

            coreDataList = elements;
            emit coreDataUpdated();
            //qDebug() << "CoreData. "<< coreDataList;

        }else if(cat == 6){
            //qDebug() << "GPS";
            elements.removeFirst();
            elements.removeFirst();
            elements.removeLast();

            gpsDataList = elements;
            emit gpsDataUpdated();
        }

        // Handle parsed elements (e.g., store data or emit signals)
    }
    counter ++;

    //currentTime = QDateTime::currentDateTime();
    //formattedTime = currentTime.toString("HH:mm:ss.zzz");
    //qDebug() << formattedTime << "serialRead --- End ---";
}

void SerialConfiguration::savePortConnection(QString portDescription)
{
    portDescriptionConnection = portDescription;
}

void SerialConfiguration::serialClose()
{
    microcontroller->close();
    microcontrollerConnected = false;

    emit microcontrollerConnectionStatus(microcontrollerConnected); // Emits a signal with the connection status
    qDebug() << "Conexión terminada";
}


//void serial_configuration::sendData(QString data) {     // To send data to the arduino
//    if(microcontroller -> isWritable()){  // Make sure that is possible to write through the serial port
//        microcontroller -> write(data.toUtf8());  // Send the data
//    } else {
//        qDebug()<<"No se pueden enviar los datos";
//    }
//}


// REV - Continuar desasrrollo
void SerialConfiguration::testData()
{
    dataPacket.clear();

    float num1 = rand() % 100;
    float num2 = rand() % 100;
    float num3 = rand() % 100;
    float num4 = rand() % 100;

    dataPacket.append(num1);
    dataPacket.append(num2);
    dataPacket.append(num3);
    dataPacket.append(num4);
}


QList<float> SerialConfiguration::showDataPacket()
{
    return dataPacket;
}


QString SerialConfiguration::showDataLog()
{
    return dataPacketLog;
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
    return counter-10;
}
int SerialConfiguration::actualTime()
{
    //timestamp = QDateTime::currentMSecsSinceEpoch();
    //return timestamp;
    return counter;
}
