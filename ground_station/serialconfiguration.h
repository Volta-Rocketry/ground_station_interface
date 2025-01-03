#ifndef SERIALCONFIGURATION_H
#define SERIALCONFIGURATION_H

#include <QObject>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QTimer>
#include <QDebug>
#include <QDateTime>
#include <QColor>

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
    void endConnection();

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

    QString getPyroA1Color();
    QString getPyroA2Color();
    QString getPyroA3Color();
    QString getPyroA4Color();
    QString getPyroA5Color();
    QString getPyroB1Color();
    QString getPyroB2Color();
    QString getPyroB3Color();
    QString getPyroB4Color();
    QString getPyroB5Color();

    float getChamber1TempValue();
    float getChamber2TempValue();
    float getChamber3TempValue();
    float getChamber4TempValue();

    QString getChamber1TempColor();
    QString getChamber2TempColor();
    QString getChamber3TempColor();
    QString getChamber4TempColor();

    float getCurrentTimeSFloat();
    QString getCurrentTimeMSmString();
    float getPrevTimeSFloat();
    QString getPrevTimeMSmString();

    // Not defined
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

    void serialClose();

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

    float _angleXLastValue = 0.0;
    float _angleYLastValue = 0.0;
    float _angleZLastValue = 0.0;

    QList<float> _currentAltDataListFloat;
    float _currentAltMinListValue;
    float _currentAltMaxListValue;

    float _apogeeAltLastValue = 0.0;
    float _pressureAltLastValue = 0.0;

    float _velLastValue = 0.0;

    QList<QString> _gpsDataList;

    QList<float> _newerLatValueList;
    QList<float> _olderLatValueList;
    QList<float> _newerLonValueList;
    QList<float> _olderLonValueList;

    float _latMaxValue;
    float _latMinValue;
    float _lonMaxValue;
    float _lonMinValue;

    QList<QString> _pyroContDataList;
    QString _pyroA1Color;
    QString _pyroA2Color;
    QString _pyroA3Color;
    QString _pyroA4Color;
    QString _pyroA5Color;
    QString _pyroB1Color;
    QString _pyroB2Color;
    QString _pyroB3Color;
    QString _pyroB4Color;
    QString _pyroB5Color;

    QList<QString> _chamberTempDataList;
    float _chamber1TempValue;
    float _chamber2TempValue;
    float _chamber3TempValue;
    float _chamber4TempValue;

    QString _chamber1TempColor;
    QString _chamber2TempColor;
    QString _chamber3TempColor;
    QString _chamber4TempColor;

    void coreDataUpdate();
    void pyroContDataUpdate();
    void chamberTempDataUpdate();

    void gpsDataUpdate();

    // Constants
    QString _pyroActivatedColor = "green";
    QString _pyroDeactivatedColor = "red";

    float _chamberMinPredictedTemp = 0;
    float _chamberMaxPredictedTemp = 50;




    // Not defined
    int counter;
    int _graphsMaxMemory = 10;

signals:
    void microcontrollerConnectionStatus(bool status);
    void sendDataMainWindow(QChar categoty_identifier, QString data);

    void coreDataReady();
    void gpsDataReady();
    void pyroContDataReady();
    void chamberTempDataReady();




};

#endif // SERIALCONFIGURATION_H
