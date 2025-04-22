#ifndef SERIALMANAGEMENT_H
#define SERIALMANAGEMENT_H

#include <QObject>
#include <QtSerialPort>
#include <QSerialPortInfo>
#include <QTimer>
#include <QDateTime>

class SerialManagement : public QObject
{
    Q_OBJECT
public:
    explicit SerialManagement(QObject *parent = nullptr);
    // Progress bar config
    int expectedApogeeAlt = 590;
    int expectedMainAlt = 130;

    // Data save
    QString filePath = "C:\\Users\\andre\\Downloads";
    QString fileName = "textfile.csv";
    QFile dataFile;

public slots:
    // MCU Search and connection
    QList<QString> searchPortInfo();
    void savePortConnection(QString portName);
    void microcontrollerConnection();
    void endConnection();
    void setBaudRateMode(int mode);

    // MCU Data recieve and send
    void serialRead();
    void sendData(QString data);

    // Get specific data (Usage in UI)
    float getLastDataInList(int list, int pos);
    float getMaxMinDataInList(int list, bool maxBool);
    float getAbsMaxMinDataInLists(QList<int> lists, bool maxBool);
    float getDataConvertedImperial(int dataWanted);
    int getTelemetryStatus();
    int getEstApogeeAlt();
    int getEstMainAlt();

    // Time management print
    void flightTimerStart();
    void flightTimerStop();
    float getCurrentTimeSFloat();
    QString getCurrentTimeMSmString(int format);

    // Data save
    void createFile();
    void writeDataFile();
    void closeFile();

private slots:
    void testMode();

private:
    // MCU Search and connection
    QString _portDescription;
    QString _portName;
    quint16 _vendorId;  // Check if it is necesary
    quint16 _productId; // Check if it is necesary
    int timesBeforeRun = 100;
    int timerBeforeRun = 0;

    QSerialPort *_MCU;

    QString _portDescriptionIntendedConnection = "Test Mode";

    bool _microcontrollerFoundOnConnection;
    bool _microcontrollerConnected;

    void serialClose();

    // MCU Data recieve and send
    QByteArray _serialData;
    QString _serialBuffer;

    // Data management
        // Core data (Accel, Angles, Alt, Gps)
    QList<QString> _coreDataList;

            // Accel
    QList<float> _accelXDataListFloat;
    QList<float> _accelYDataListFloat;
    QList<float> _accelZDataListFloat;

            // Angles
    QList<float> _angleXDataListFloat;
    QList<float> _angleYDataListFloat;
    QList<float> _angleZDataListFloat;

            // Altitude
    QList<float> _currentAltDataListFloat;

            // GPS
    QList<float> _newerLatValueList;
    QList<float> _olderLatValueList;
    QList<float> _newerLonValueList;
    QList<float> _olderLonValueList;

            // Speed
    QList<float> _currentSpeedDataListFloat;

        // Telemetry Update Status
    int telemetryStatus;        

    // Data updates
    void coreDataUpdate();

    // Times updates management
    QString _coreLastUpdatedTime = "00:00:00";
    float _coreLastUpdatedSeconds = 9999;

    // Constants
    int _baudRateMode = 0;
    QTimer *timer;
    float firstTimeSeconds = 0;
    int _maxDataMemory = 100; // Number of max data stored in arrays with data

    // FOR TEST MODE
    QTimer *timerTestMode;

    int accelVolatility = 2;
    int altVolatility = 10;
    int angVolatility = 5;
    int velVolatility = 5;

    int chamberVolatility = 10;

    int gpsVolatility = 3;

    int id1 = 1;
    int id2Core = 1;
    int cs1Core = 15;
    int cs2Core = 36;
    int id2PyroCont = 2;
    int id2ChamberTemp = 3;
    int id2OtherData = 5;
    int id2GPS = 6;

    float accelx = 0;
    float accely = 0;
    float accelz = 0;
    float angx = 0;
    float angy = 0;
    float angz = 0;
    float altC = 0;
    float altAp = 0;
    float altPre = 0;
    float vel = 0;

    float lat = 0;
    float lon = 0;

    int a1, a2, a3, a4, a5, b1, b2, b3, b4, b5 = 0;
    int chamberTemp1, chamberTemp2, chamberTemp3, chamberTemp4 = 0.65;

    int humd = 0;
    int refPreas = 0;

    int altNegLimit = 0;
    int altPosLimit = 3e3;
    int angNegLimit = -180;
    int angPosLimit = 180;
    int chamberTempPosLimit = 50;
    int chamberTempNegLimit = 0;

    int randPackedIndicator;

    float generateData(float data, int volatility, float minLimit = -1e4, float maxLimit = 1e4);

    // Data save
    bool fileOpen2Write = false;

signals:
    // For connection to MCU
    void microcontrollerConnectionStatus(bool status);

    // For UI update
    void coreDataReady();

    // For Status Updates
        // Telemetry base
    void telemetryStatusIdle();
    void telemetryStatusBoost();
    void telemetryStatusAscent();
    void telemetryStatusApogee();
    void telemetryStatusMainChute();
    void telemetryStatusTouchDown();
        // Manual base
    void manualBoostDetected();
    void manualApogeeDetected();
    void manualMainDetected();
    void manualLandingDetected();

    // For error and warnings management
    void portIsNotWritable();
    void portIsNotReadable();
    void portIsNotOpen();
    void portNotFound();
    void dataNotSent();
    void cannotAcessDataInList(); // Use in getLastDataInList
    void cannotAcessList();
};

#endif // SERIALMANAGEMENT_H

