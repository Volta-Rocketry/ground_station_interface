#ifndef SERIALCONFIGURATION_H
#define SERIALCONFIGURATION_H

#include <QObject>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QTimer>
#include <QDebug>
#include <QDateTime>

#include "uiconstants.h"

class SerialConfiguration : public QObject
{
    Q_OBJECT
public:
    explicit SerialConfiguration(QObject *parent = nullptr);    

public slots:
    // MCU Search and connection
    QList<QString> searchPortInfo();
    void savePortConnection(QString portName);
    void microcontrollerConnection();
    void serialClose();

    // MCU Data recieve and send
    void serialRead();
    void sendData(QString data);

    // Recieved Data management
    QList<QString> getCoreDataFull();
    float getCoreDataItem(int pos);
    QList<QString> getGPSDataFull();
    float getGPSDataItem(int pos);

    // Show data
    float getLastAccelXValue();
    float getLastAccelYValue();
    float getLastAccelZValue();
    float getAbsAccelMinValue();
    float getAbsAccelMaxValue();

    float getAngleXLastValue();
    float getAngleYLastValue();
    float getAngleZLastValue();

    float getLastCurrentAltValue();
    float getCurrentAltMinValue();
    float getCurrentAltMaxValue();

    float getApogeeAltLastValue();
    float getPressureAltLastValue();

    float getVelLastValue();

    float getNewerLatLastValue();
    float getOlderLatLastValue();
    float getNewerLonLastValue();
    float getOlderLonLastValue();

    float getLatMinValue();
    float getLatMaxValue();
    float getLonMinValue();
    float getLonMaxValue();


    // Not defined
    int xDat();
    int actualTimeUTC();
    int prevTimeUTC();
    int actualTime();

    int getGraphsMaxMemory();
    void setGraphsMaxMemory(int memory);


private:
    // MCU Search and connection
    QString _portDescription;
    QString _portName;
    quint16 _vendorId;  // Check if it is necesary
    quint16 _productId; // Check if it is necesary

    QSerialPort *_MCU;

    QString _portDescriptionIntendedConnection;

    bool _microcontrollerFoundOnConnection;
    bool _microcontrollerConnected;

    // MCU Data recieve and send
    QByteArray _serialData;
    QString _serialBuffer;
    QTimer *timer;


    // Manage Recieved Data
    QList<QString> _coreDataList;

    QList<float> _accelXDataListFloat;
    QList<float> _accelYDataListFloat;
    QList<float> _accelZDataListFloat;
    float _accelXMinListValue;
    float _accelXMaxListValue;
    float _accelYMinListValue;
    float _accelYMaxListValue;
    float _accelZMinListValue;
    float _accelZMaxListValue;
    float _accelAbsMaxValue;
    float _accelAbsMinValue;

    float _angleXLastValue;
    float _angleYLastValue;
    float _angleZLastValue;

    QList<float> _currentAltDataListFloat;
    float _currentAltMinListValue;
    float _currentAltMaxListValue;

    float _apogeeAltLastValue;
    float _pressureAltLastValue;

    float _velLastValue;

    QList<QString> _gpsDataList;

    QList<float> _newerLatValueList;
    QList<float> _olderLatValueList;
    QList<float> _newerLonValueList;
    QList<float> _olderLonValueList;

    float _latMaxValue;
    float _latMinValue;
    float _lonMaxValue;
    float _lonMinValue;

    void coreDataUpdate();
    void gpsDataUpdate();


    // Not defined
    int counter;
    int _graphsMaxMemory = 100;

signals:
    void microcontrollerConnectionStatus(bool status);
    void sendDataMainWindow(QChar categoty_identifier, QString data);

    void coreDataReady();
    void gpsDataReady();


};

#endif // SERIALCONFIGURATION_H
