#ifndef SERIALCONFIGURATION_H
#define SERIALCONFIGURATION_H

#include <QObject>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QDebug>

class SerialConfiguration : public QObject
{
    Q_OBJECT
public:
    explicit SerialConfiguration(QObject *parent = nullptr);
    void searchPortInfo();
    void microcontrollerConnection(QString port_description);
    void microcontrollerInit(QString port_description);
    void serialClose();
    void sendData(QString data);
    void testData();

    QString portName;

    QList<float> showDataPacket();
    QString showDataLog();

    bool microcontrollerAvailable;
    bool microcontrollerConnected;
    QString microcontrollerName;
    QSerialPort *microcontroller;
    QList<QString> microcontrollerNames;
    QList<QString> microcontrollerPorts;

public slots:
    void serialRead();

private:
    QList<float> dataPacket;
    QString dataPacketLog;
    QByteArray serialData;
    QString serialBuffer;
    quint16 vendorId;
    quint16 productId;

signals:
    void microcontrollerConnectionStatus(bool status);
    void sendDataMainWindow(QChar categoty_identifier, QString data);
};

#endif // SERIALCONFIGURATION_H
