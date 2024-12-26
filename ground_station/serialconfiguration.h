#ifndef SERIALCONFIGURATION_H
#define SERIALCONFIGURATION_H

#include <QObject>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QTimer>
#include <QDebug>
#include <QDateTime>

class SerialConfiguration : public QObject
{
    Q_OBJECT
public:
    explicit SerialConfiguration(QObject *parent = nullptr);
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
    QList<QString> searchPortInfo();
    void serialRead();

    void savePortConnection(QString portName);
    void microcontrollerConnection();

    QList<QString> getCoreDataFull();
    float getCoreDataItem(int pos);
    QList<QString> getGPSDataFull();
    float getGPSDataItem(int pos);

    int xDat();
    int actualTimeUTC();
    int prevTimeUTC();
    int actualTime();

private:
    QTimer *timer;
    QString portDescriptionConnection;

    QList<float> dataPacket;
    QString dataPacketLog;
    QByteArray serialData;
    QString serialBuffer;
    quint16 vendorId;
    quint16 productId;

    QList<QString> coreDataList;
    QList<QString> gpsDataList;

    int counter;


signals:
    void microcontrollerConnectionStatus(bool status);
    void sendDataMainWindow(QChar categoty_identifier, QString data);

    void coreDataUpdated();
    void gpsDataUpdated();
};

#endif // SERIALCONFIGURATION_H
