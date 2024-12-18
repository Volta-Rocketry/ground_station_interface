#include "serialconfiguration.h"

SerialConfiguration::SerialConfiguration(QObject *parent)
    : QObject{parent}
{
    microcontroller = new QSerialPort();
    microcontrollerAvailable = false;
    microcontrollerConnected = false;
    serialBuffer = "";
}

void SerialConfiguration::searchPortInfo()
{
    microcontrollerNames.clear();
    microcontrollerPorts.clear();

    foreach (const QSerialPortInfo &port, QSerialPortInfo::availablePorts()) {
        microcontrollerNames.append(port.description());
        microcontrollerPorts.append(port.portName());
    }
}


void SerialConfiguration::microcontrollerConnection(QString port_selection)
{
    foreach (const QSerialPortInfo &serial_info, QSerialPortInfo::availablePorts()) { // Find each microcontroller available for connection
        if (serial_info.description() == port_selection) {    // If it detects the microcontroller selected by the user, it gets the data
            microcontrollerName = port_selection;
            portName = serial_info.portName();
            vendorId = serial_info.vendorIdentifier();
            vendorId = serial_info.productIdentifier();
            microcontrollerAvailable = true;   // Confirm that the microcontroller is available
            qDebug() << "Nombre: " << port_selection;
            qDebug() << "Puerto: " << serial_info.portName();
            qDebug() << "Vendor ID: " << serial_info.vendorIdentifier();
            qDebug() << "Product ID: " << serial_info.productIdentifier();
            break;
        } else {
            microcontrollerAvailable = false;  // If it does not find the microcontroller selected by the user
        }
    }

    if (microcontrollerAvailable) {    // If microcontroller confirmation is available, initialize the connection
        qDebug() << "Se encontró un " << port_selection << ", iniciando conexión";
        microcontrollerInit(port_selection);  // Initiates the connection with the microcontroller selected by the user
    } else {
        qDebug() << "No se encontró a " << port_selection;    // The microcontroller selected by the user was not found, the message is returned
        emit microcontrollerConnectionStatus(false);            // Emits a signal with the connection status
    }
}


void SerialConfiguration::microcontrollerInit(QString port_selection)
{
    microcontroller->setPortName(portName);
    microcontroller->setBaudRate(QSerialPort::Baud9600); // It has to be the same as in arduino
    microcontroller->setDataBits(QSerialPort::Data8);
    microcontroller->setParity(QSerialPort::NoParity);
    microcontroller->setStopBits(QSerialPort::OneStop);
    microcontroller->setFlowControl(QSerialPort::NoFlowControl);
    microcontroller->setReadBufferSize(8192);
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
}


void SerialConfiguration::serialRead()
{
    if (!microcontroller -> isReadable() || !microcontrollerConnected) {
        return;
    }

    dataPacket.clear();
    dataPacketLog.clear();
    //    serial_buffer.clear();

    microcontroller -> waitForReadyRead(10);
    serialData = microcontroller -> readLine();
    serialBuffer += QString::fromStdString(serialData.toStdString());
    QList<QString> elements = serialBuffer.split(",");

    // Data packet cleaning
    if (elements.size() > 1) {
        for (QString &element : elements) {
            if (element.contains("\r") || element.contains("\r")) {
                element.remove("\r");
                element.remove("\n");
            }
            float value = element.toFloat();
            /*qDebug() << "value: " << value;
            qDebug() << "element: " << element;*/

            dataPacket.append(value);

            dataPacketLog += element + ",";
        }
    } else {
        return;
    }

    dataPacketLog.removeLast();


    /*qDebug() << "dataPacket_log: " << dataPacket_log;
    qDebug() << "dataPacket : " << dataPacket;*/
    serialBuffer.clear();
}

void SerialConfiguration::serialClose()
{
    microcontroller->close();
    microcontrollerConnected = false;

    emit microcontrollerConnectionStatus(microcontrollerConnected); // Emits a signal with the connection status
    qDebug() << "Conexión terminada";
}


// REV - es necesario enviar data al Araduino?
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

