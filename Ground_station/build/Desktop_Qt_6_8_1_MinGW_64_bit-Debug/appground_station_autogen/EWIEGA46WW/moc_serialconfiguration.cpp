/****************************************************************************
** Meta object code from reading C++ file 'serialconfiguration.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../old_ground_station/serialconfiguration.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'serialconfiguration.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.8.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {
struct qt_meta_tag_ZN19SerialConfigurationE_t {};
} // unnamed namespace


#ifdef QT_MOC_HAS_STRINGDATA
static constexpr auto qt_meta_stringdata_ZN19SerialConfigurationE = QtMocHelpers::stringData(
    "SerialConfiguration",
    "microcontrollerConnectionStatus",
    "",
    "status",
    "sendDataMainWindow",
    "categoty_identifier",
    "data",
    "coreDataReady",
    "pyroContDataReady",
    "chamberTempDataReady",
    "otherDataReady",
    "gpsDataReady",
    "updateInfo2Screen",
    "portIsNotWritable",
    "portIsNotReadable",
    "portIsNotOpen",
    "portNotFound",
    "dataNotSent",
    "searchPortInfo",
    "savePortConnection",
    "portName",
    "microcontrollerConnection",
    "endConnection",
    "serialRead",
    "sendData",
    "getCoreDataFull",
    "getCoreDataItem",
    "pos",
    "getGPSDataFull",
    "getGPSDataItem",
    "getLastAccelXValue",
    "getLastAccelYValue",
    "getLastAccelZValue",
    "getAbsAccelMinValue",
    "getAbsAccelMaxValue",
    "getAngleXLastValue",
    "getAngleYLastValue",
    "getAngleZLastValue",
    "getLastCurrentAltValue",
    "getCurrentAltMinValue",
    "getCurrentAltMaxValue",
    "getApogeeAltLastValue",
    "getPressureAltLastValue",
    "getVelLastValue",
    "getNewerLatLastValue",
    "getOlderLatLastValue",
    "getNewerLonLastValue",
    "getOlderLonLastValue",
    "getLatMinValue",
    "getLatMaxValue",
    "getLonMinValue",
    "getLonMaxValue",
    "getPyroA1Color",
    "getPyroA2Color",
    "getPyroA3Color",
    "getPyroA4Color",
    "getPyroA5Color",
    "getPyroB1Color",
    "getPyroB2Color",
    "getPyroB3Color",
    "getPyroB4Color",
    "getPyroB5Color",
    "getChamber1TempValue",
    "getChamber2TempValue",
    "getChamber3TempValue",
    "getChamber4TempValue",
    "getChamber1TempColor",
    "getChamber2TempColor",
    "getChamber3TempColor",
    "getChamber4TempColor",
    "getCoreLastUpdatedTime",
    "getGpsLastUpdatedTime",
    "getPyroLastUpdatedTime",
    "getChamberLastUpdatedTime",
    "getOtherLastUpdatedTime",
    "getCoreLastUpdatedSeconds",
    "getGpsLastUpdatedSeconds",
    "getPyroLastUpdatedSeconds",
    "getChamberLastUpdatedSeconds",
    "getOtherLastUpdatedSeconds",
    "getHumidityValue",
    "getRefPreassureValue",
    "getCurrentTimeSFloat",
    "getCurrentTimeMSmString",
    "format",
    "setBaudRateMode",
    "mode",
    "getGraphsMaxMemory",
    "setGraphsMaxMemory",
    "memory",
    "setChamberMinPredictedTemp",
    "temperature",
    "setChamberMaxPredictedTemp",
    "emitUpdateInfo2Screen",
    "testMode"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA

Q_CONSTINIT static const uint qt_meta_data_ZN19SerialConfigurationE[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      84,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      13,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,  518,    2, 0x06,    1 /* Public */,
       4,    2,  521,    2, 0x06,    3 /* Public */,
       7,    0,  526,    2, 0x06,    6 /* Public */,
       8,    0,  527,    2, 0x06,    7 /* Public */,
       9,    0,  528,    2, 0x06,    8 /* Public */,
      10,    0,  529,    2, 0x06,    9 /* Public */,
      11,    0,  530,    2, 0x06,   10 /* Public */,
      12,    0,  531,    2, 0x06,   11 /* Public */,
      13,    0,  532,    2, 0x06,   12 /* Public */,
      14,    0,  533,    2, 0x06,   13 /* Public */,
      15,    0,  534,    2, 0x06,   14 /* Public */,
      16,    0,  535,    2, 0x06,   15 /* Public */,
      17,    0,  536,    2, 0x06,   16 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      18,    0,  537,    2, 0x0a,   17 /* Public */,
      19,    1,  538,    2, 0x0a,   18 /* Public */,
      21,    0,  541,    2, 0x0a,   20 /* Public */,
      22,    0,  542,    2, 0x0a,   21 /* Public */,
      23,    0,  543,    2, 0x0a,   22 /* Public */,
      24,    1,  544,    2, 0x0a,   23 /* Public */,
      25,    0,  547,    2, 0x0a,   25 /* Public */,
      26,    1,  548,    2, 0x0a,   26 /* Public */,
      28,    0,  551,    2, 0x0a,   28 /* Public */,
      29,    1,  552,    2, 0x0a,   29 /* Public */,
      30,    0,  555,    2, 0x0a,   31 /* Public */,
      31,    0,  556,    2, 0x0a,   32 /* Public */,
      32,    0,  557,    2, 0x0a,   33 /* Public */,
      33,    0,  558,    2, 0x0a,   34 /* Public */,
      34,    0,  559,    2, 0x0a,   35 /* Public */,
      35,    0,  560,    2, 0x0a,   36 /* Public */,
      36,    0,  561,    2, 0x0a,   37 /* Public */,
      37,    0,  562,    2, 0x0a,   38 /* Public */,
      38,    0,  563,    2, 0x0a,   39 /* Public */,
      39,    0,  564,    2, 0x0a,   40 /* Public */,
      40,    0,  565,    2, 0x0a,   41 /* Public */,
      41,    0,  566,    2, 0x0a,   42 /* Public */,
      42,    0,  567,    2, 0x0a,   43 /* Public */,
      43,    0,  568,    2, 0x0a,   44 /* Public */,
      44,    0,  569,    2, 0x0a,   45 /* Public */,
      45,    0,  570,    2, 0x0a,   46 /* Public */,
      46,    0,  571,    2, 0x0a,   47 /* Public */,
      47,    0,  572,    2, 0x0a,   48 /* Public */,
      48,    0,  573,    2, 0x0a,   49 /* Public */,
      49,    0,  574,    2, 0x0a,   50 /* Public */,
      50,    0,  575,    2, 0x0a,   51 /* Public */,
      51,    0,  576,    2, 0x0a,   52 /* Public */,
      52,    0,  577,    2, 0x0a,   53 /* Public */,
      53,    0,  578,    2, 0x0a,   54 /* Public */,
      54,    0,  579,    2, 0x0a,   55 /* Public */,
      55,    0,  580,    2, 0x0a,   56 /* Public */,
      56,    0,  581,    2, 0x0a,   57 /* Public */,
      57,    0,  582,    2, 0x0a,   58 /* Public */,
      58,    0,  583,    2, 0x0a,   59 /* Public */,
      59,    0,  584,    2, 0x0a,   60 /* Public */,
      60,    0,  585,    2, 0x0a,   61 /* Public */,
      61,    0,  586,    2, 0x0a,   62 /* Public */,
      62,    0,  587,    2, 0x0a,   63 /* Public */,
      63,    0,  588,    2, 0x0a,   64 /* Public */,
      64,    0,  589,    2, 0x0a,   65 /* Public */,
      65,    0,  590,    2, 0x0a,   66 /* Public */,
      66,    0,  591,    2, 0x0a,   67 /* Public */,
      67,    0,  592,    2, 0x0a,   68 /* Public */,
      68,    0,  593,    2, 0x0a,   69 /* Public */,
      69,    0,  594,    2, 0x0a,   70 /* Public */,
      70,    0,  595,    2, 0x0a,   71 /* Public */,
      71,    0,  596,    2, 0x0a,   72 /* Public */,
      72,    0,  597,    2, 0x0a,   73 /* Public */,
      73,    0,  598,    2, 0x0a,   74 /* Public */,
      74,    0,  599,    2, 0x0a,   75 /* Public */,
      75,    0,  600,    2, 0x0a,   76 /* Public */,
      76,    0,  601,    2, 0x0a,   77 /* Public */,
      77,    0,  602,    2, 0x0a,   78 /* Public */,
      78,    0,  603,    2, 0x0a,   79 /* Public */,
      79,    0,  604,    2, 0x0a,   80 /* Public */,
      80,    0,  605,    2, 0x0a,   81 /* Public */,
      81,    0,  606,    2, 0x0a,   82 /* Public */,
      82,    0,  607,    2, 0x0a,   83 /* Public */,
      83,    1,  608,    2, 0x0a,   84 /* Public */,
      85,    1,  611,    2, 0x0a,   86 /* Public */,
      87,    0,  614,    2, 0x0a,   88 /* Public */,
      88,    1,  615,    2, 0x0a,   89 /* Public */,
      90,    1,  618,    2, 0x0a,   91 /* Public */,
      92,    1,  621,    2, 0x0a,   93 /* Public */,
      93,    0,  624,    2, 0x08,   95 /* Private */,
      94,    0,  625,    2, 0x08,   96 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    3,
    QMetaType::Void, QMetaType::QChar, QMetaType::QString,    5,    6,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::QStringList,
    QMetaType::Void, QMetaType::QString,   20,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    6,
    QMetaType::QStringList,
    QMetaType::Float, QMetaType::Int,   27,
    QMetaType::QStringList,
    QMetaType::Float, QMetaType::Int,   27,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::Float,
    QMetaType::QString, QMetaType::Int,   84,
    QMetaType::Void, QMetaType::Int,   86,
    QMetaType::Int,
    QMetaType::Void, QMetaType::Int,   89,
    QMetaType::Void, QMetaType::Int,   91,
    QMetaType::Void, QMetaType::Int,   91,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

Q_CONSTINIT const QMetaObject SerialConfiguration::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_ZN19SerialConfigurationE.offsetsAndSizes,
    qt_meta_data_ZN19SerialConfigurationE,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_tag_ZN19SerialConfigurationE_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<SerialConfiguration, std::true_type>,
        // method 'microcontrollerConnectionStatus'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'sendDataMainWindow'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QChar, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'coreDataReady'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'pyroContDataReady'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'chamberTempDataReady'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'otherDataReady'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'gpsDataReady'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'updateInfo2Screen'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'portIsNotWritable'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'portIsNotReadable'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'portIsNotOpen'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'portNotFound'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'dataNotSent'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'searchPortInfo'
        QtPrivate::TypeAndForceComplete<QList<QString>, std::false_type>,
        // method 'savePortConnection'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'microcontrollerConnection'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'endConnection'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'serialRead'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'sendData'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getCoreDataFull'
        QtPrivate::TypeAndForceComplete<QList<QString>, std::false_type>,
        // method 'getCoreDataItem'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getGPSDataFull'
        QtPrivate::TypeAndForceComplete<QList<QString>, std::false_type>,
        // method 'getGPSDataItem'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getLastAccelXValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getLastAccelYValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getLastAccelZValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getAbsAccelMinValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getAbsAccelMaxValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getAngleXLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getAngleYLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getAngleZLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getLastCurrentAltValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getCurrentAltMinValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getCurrentAltMaxValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getApogeeAltLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getPressureAltLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getVelLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getNewerLatLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getOlderLatLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getNewerLonLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getOlderLonLastValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getLatMinValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getLatMaxValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getLonMinValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getLonMaxValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getPyroA1Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroA2Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroA3Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroA4Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroA5Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroB1Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroB2Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroB3Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroB4Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroB5Color'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getChamber1TempValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getChamber2TempValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getChamber3TempValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getChamber4TempValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getChamber1TempColor'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getChamber2TempColor'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getChamber3TempColor'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getChamber4TempColor'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getCoreLastUpdatedTime'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getGpsLastUpdatedTime'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroLastUpdatedTime'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getChamberLastUpdatedTime'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getOtherLastUpdatedTime'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getCoreLastUpdatedSeconds'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getGpsLastUpdatedSeconds'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getPyroLastUpdatedSeconds'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getChamberLastUpdatedSeconds'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getOtherLastUpdatedSeconds'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getHumidityValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getRefPreassureValue'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getCurrentTimeSFloat'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getCurrentTimeMSmString'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'setBaudRateMode'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getGraphsMaxMemory'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'setGraphsMaxMemory'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'setChamberMinPredictedTemp'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'setChamberMaxPredictedTemp'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'emitUpdateInfo2Screen'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'testMode'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void SerialConfiguration::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<SerialConfiguration *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->microcontrollerConnectionStatus((*reinterpret_cast< std::add_pointer_t<bool>>(_a[1]))); break;
        case 1: _t->sendDataMainWindow((*reinterpret_cast< std::add_pointer_t<QChar>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2]))); break;
        case 2: _t->coreDataReady(); break;
        case 3: _t->pyroContDataReady(); break;
        case 4: _t->chamberTempDataReady(); break;
        case 5: _t->otherDataReady(); break;
        case 6: _t->gpsDataReady(); break;
        case 7: _t->updateInfo2Screen(); break;
        case 8: _t->portIsNotWritable(); break;
        case 9: _t->portIsNotReadable(); break;
        case 10: _t->portIsNotOpen(); break;
        case 11: _t->portNotFound(); break;
        case 12: _t->dataNotSent(); break;
        case 13: { QList<QString> _r = _t->searchPortInfo();
            if (_a[0]) *reinterpret_cast< QList<QString>*>(_a[0]) = std::move(_r); }  break;
        case 14: _t->savePortConnection((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 15: _t->microcontrollerConnection(); break;
        case 16: _t->endConnection(); break;
        case 17: _t->serialRead(); break;
        case 18: _t->sendData((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 19: { QList<QString> _r = _t->getCoreDataFull();
            if (_a[0]) *reinterpret_cast< QList<QString>*>(_a[0]) = std::move(_r); }  break;
        case 20: { float _r = _t->getCoreDataItem((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 21: { QList<QString> _r = _t->getGPSDataFull();
            if (_a[0]) *reinterpret_cast< QList<QString>*>(_a[0]) = std::move(_r); }  break;
        case 22: { float _r = _t->getGPSDataItem((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 23: { float _r = _t->getLastAccelXValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 24: { float _r = _t->getLastAccelYValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 25: { float _r = _t->getLastAccelZValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 26: { float _r = _t->getAbsAccelMinValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 27: { float _r = _t->getAbsAccelMaxValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 28: { float _r = _t->getAngleXLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 29: { float _r = _t->getAngleYLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 30: { float _r = _t->getAngleZLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 31: { float _r = _t->getLastCurrentAltValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 32: { float _r = _t->getCurrentAltMinValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 33: { float _r = _t->getCurrentAltMaxValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 34: { float _r = _t->getApogeeAltLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 35: { float _r = _t->getPressureAltLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 36: { float _r = _t->getVelLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 37: { float _r = _t->getNewerLatLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 38: { float _r = _t->getOlderLatLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 39: { float _r = _t->getNewerLonLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 40: { float _r = _t->getOlderLonLastValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 41: { float _r = _t->getLatMinValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 42: { float _r = _t->getLatMaxValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 43: { float _r = _t->getLonMinValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 44: { float _r = _t->getLonMaxValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 45: { QString _r = _t->getPyroA1Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 46: { QString _r = _t->getPyroA2Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 47: { QString _r = _t->getPyroA3Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 48: { QString _r = _t->getPyroA4Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 49: { QString _r = _t->getPyroA5Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 50: { QString _r = _t->getPyroB1Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 51: { QString _r = _t->getPyroB2Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 52: { QString _r = _t->getPyroB3Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 53: { QString _r = _t->getPyroB4Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 54: { QString _r = _t->getPyroB5Color();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 55: { float _r = _t->getChamber1TempValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 56: { float _r = _t->getChamber2TempValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 57: { float _r = _t->getChamber3TempValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 58: { float _r = _t->getChamber4TempValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 59: { QString _r = _t->getChamber1TempColor();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 60: { QString _r = _t->getChamber2TempColor();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 61: { QString _r = _t->getChamber3TempColor();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 62: { QString _r = _t->getChamber4TempColor();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 63: { QString _r = _t->getCoreLastUpdatedTime();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 64: { QString _r = _t->getGpsLastUpdatedTime();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 65: { QString _r = _t->getPyroLastUpdatedTime();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 66: { QString _r = _t->getChamberLastUpdatedTime();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 67: { QString _r = _t->getOtherLastUpdatedTime();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 68: { QString _r = _t->getCoreLastUpdatedSeconds();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 69: { QString _r = _t->getGpsLastUpdatedSeconds();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 70: { QString _r = _t->getPyroLastUpdatedSeconds();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 71: { QString _r = _t->getChamberLastUpdatedSeconds();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 72: { QString _r = _t->getOtherLastUpdatedSeconds();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 73: { float _r = _t->getHumidityValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 74: { float _r = _t->getRefPreassureValue();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 75: { float _r = _t->getCurrentTimeSFloat();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 76: { QString _r = _t->getCurrentTimeMSmString((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 77: _t->setBaudRateMode((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 78: { int _r = _t->getGraphsMaxMemory();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 79: _t->setGraphsMaxMemory((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 80: _t->setChamberMinPredictedTemp((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 81: _t->setChamberMaxPredictedTemp((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 82: _t->emitUpdateInfo2Screen(); break;
        case 83: _t->testMode(); break;
        default: ;
        }
    }
    if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _q_method_type = void (SerialConfiguration::*)(bool );
            if (_q_method_type _q_method = &SerialConfiguration::microcontrollerConnectionStatus; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)(QChar , QString );
            if (_q_method_type _q_method = &SerialConfiguration::sendDataMainWindow; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::coreDataReady; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::pyroContDataReady; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::chamberTempDataReady; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::otherDataReady; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::gpsDataReady; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::updateInfo2Screen; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::portIsNotWritable; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 8;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::portIsNotReadable; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 9;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::portIsNotOpen; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 10;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::portNotFound; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 11;
                return;
            }
        }
        {
            using _q_method_type = void (SerialConfiguration::*)();
            if (_q_method_type _q_method = &SerialConfiguration::dataNotSent; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 12;
                return;
            }
        }
    }
}

const QMetaObject *SerialConfiguration::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SerialConfiguration::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ZN19SerialConfigurationE.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int SerialConfiguration::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 84)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 84;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 84)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 84;
    }
    return _id;
}

// SIGNAL 0
void SerialConfiguration::microcontrollerConnectionStatus(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void SerialConfiguration::sendDataMainWindow(QChar _t1, QString _t2)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))), const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t2))) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void SerialConfiguration::coreDataReady()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void SerialConfiguration::pyroContDataReady()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void SerialConfiguration::chamberTempDataReady()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void SerialConfiguration::otherDataReady()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void SerialConfiguration::gpsDataReady()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void SerialConfiguration::updateInfo2Screen()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void SerialConfiguration::portIsNotWritable()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}

// SIGNAL 9
void SerialConfiguration::portIsNotReadable()
{
    QMetaObject::activate(this, &staticMetaObject, 9, nullptr);
}

// SIGNAL 10
void SerialConfiguration::portIsNotOpen()
{
    QMetaObject::activate(this, &staticMetaObject, 10, nullptr);
}

// SIGNAL 11
void SerialConfiguration::portNotFound()
{
    QMetaObject::activate(this, &staticMetaObject, 11, nullptr);
}

// SIGNAL 12
void SerialConfiguration::dataNotSent()
{
    QMetaObject::activate(this, &staticMetaObject, 12, nullptr);
}
QT_WARNING_POP
