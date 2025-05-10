/****************************************************************************
** Meta object code from reading C++ file 'serialmanagement.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.8.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../Ground_station/serialmanagement.h"
#include <QtCore/qmetatype.h>
#include <QtCore/QList>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'serialmanagement.h' doesn't include <QObject>."
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
struct qt_meta_tag_ZN16SerialManagementE_t {};
} // unnamed namespace


#ifdef QT_MOC_HAS_STRINGDATA
static constexpr auto qt_meta_stringdata_ZN16SerialManagementE = QtMocHelpers::stringData(
    "SerialManagement",
    "microcontrollerConnectionStatus",
    "",
    "status",
    "coreDataReady",
    "logUpdate",
    "telemetryStatusIdle",
    "telemetryStatusBoost",
    "telemetryStatusAscent",
    "telemetryStatusApogee",
    "telemetryStatusMainChute",
    "telemetryStatusTouchDown",
    "manualBoostDetected",
    "manualApogeeDetected",
    "manualMainDetected",
    "manualLandingDetected",
    "portIsNotWritable",
    "portIsNotReadable",
    "portIsNotOpen",
    "portNotFound",
    "dataNotSent",
    "cannotAcessDataInList",
    "cannotAcessList",
    "searchPortInfo",
    "savePortConnection",
    "portName",
    "microcontrollerConnection",
    "endConnection",
    "setBaudRateMode",
    "mode",
    "serialRead",
    "sendData",
    "data",
    "getLastDataInList",
    "list",
    "pos",
    "getMaxMinDataInList",
    "maxBool",
    "getAbsMaxMinDataInLists",
    "QList<int>",
    "lists",
    "getDataConvertedImperial",
    "dataWanted",
    "getTelemetryStatus",
    "getEstApogeeAlt",
    "getEstMainAlt",
    "getEstTouchDownAlt",
    "getFilePath",
    "getFileName",
    "getMicroConfirmation",
    "getLogMessage",
    "flightTimerStart",
    "flightTimerStop",
    "getCurrentTimeSFloat",
    "getCurrentTimeMSmString",
    "format",
    "setReferenceTime",
    "getActualTime",
    "createFile",
    "writeDataFile",
    "closeFile",
    "writeFloatValue",
    "varIndex",
    "value",
    "writeIntValue",
    "writeStringValue",
    "text",
    "testMode"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA

Q_CONSTINIT static const uint qt_meta_data_ZN16SerialManagementE[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      52,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      20,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,  326,    2, 0x06,    1 /* Public */,
       4,    0,  329,    2, 0x06,    3 /* Public */,
       5,    0,  330,    2, 0x06,    4 /* Public */,
       6,    0,  331,    2, 0x06,    5 /* Public */,
       7,    0,  332,    2, 0x06,    6 /* Public */,
       8,    0,  333,    2, 0x06,    7 /* Public */,
       9,    0,  334,    2, 0x06,    8 /* Public */,
      10,    0,  335,    2, 0x06,    9 /* Public */,
      11,    0,  336,    2, 0x06,   10 /* Public */,
      12,    0,  337,    2, 0x06,   11 /* Public */,
      13,    0,  338,    2, 0x06,   12 /* Public */,
      14,    0,  339,    2, 0x06,   13 /* Public */,
      15,    0,  340,    2, 0x06,   14 /* Public */,
      16,    0,  341,    2, 0x06,   15 /* Public */,
      17,    0,  342,    2, 0x06,   16 /* Public */,
      18,    0,  343,    2, 0x06,   17 /* Public */,
      19,    0,  344,    2, 0x06,   18 /* Public */,
      20,    0,  345,    2, 0x06,   19 /* Public */,
      21,    0,  346,    2, 0x06,   20 /* Public */,
      22,    0,  347,    2, 0x06,   21 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      23,    0,  348,    2, 0x0a,   22 /* Public */,
      24,    1,  349,    2, 0x0a,   23 /* Public */,
      26,    0,  352,    2, 0x0a,   25 /* Public */,
      27,    0,  353,    2, 0x0a,   26 /* Public */,
      28,    1,  354,    2, 0x0a,   27 /* Public */,
      30,    0,  357,    2, 0x0a,   29 /* Public */,
      31,    1,  358,    2, 0x0a,   30 /* Public */,
      33,    2,  361,    2, 0x0a,   32 /* Public */,
      36,    2,  366,    2, 0x0a,   35 /* Public */,
      38,    2,  371,    2, 0x0a,   38 /* Public */,
      41,    1,  376,    2, 0x0a,   41 /* Public */,
      43,    0,  379,    2, 0x0a,   43 /* Public */,
      44,    0,  380,    2, 0x0a,   44 /* Public */,
      45,    0,  381,    2, 0x0a,   45 /* Public */,
      46,    0,  382,    2, 0x0a,   46 /* Public */,
      47,    0,  383,    2, 0x0a,   47 /* Public */,
      48,    0,  384,    2, 0x0a,   48 /* Public */,
      49,    0,  385,    2, 0x0a,   49 /* Public */,
      50,    0,  386,    2, 0x0a,   50 /* Public */,
      51,    0,  387,    2, 0x0a,   51 /* Public */,
      52,    0,  388,    2, 0x0a,   52 /* Public */,
      53,    0,  389,    2, 0x0a,   53 /* Public */,
      54,    1,  390,    2, 0x0a,   54 /* Public */,
      56,    0,  393,    2, 0x0a,   56 /* Public */,
      57,    0,  394,    2, 0x0a,   57 /* Public */,
      58,    0,  395,    2, 0x0a,   58 /* Public */,
      59,    0,  396,    2, 0x0a,   59 /* Public */,
      60,    0,  397,    2, 0x0a,   60 /* Public */,
      61,    2,  398,    2, 0x0a,   61 /* Public */,
      64,    2,  403,    2, 0x0a,   64 /* Public */,
      65,    2,  408,    2, 0x0a,   67 /* Public */,
      67,    0,  413,    2, 0x08,   70 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    3,
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
    QMetaType::Void, QMetaType::QString,   25,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   29,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   32,
    QMetaType::Float, QMetaType::Int, QMetaType::Int,   34,   35,
    QMetaType::Float, QMetaType::Int, QMetaType::Bool,   34,   37,
    QMetaType::Float, 0x80000000 | 39, QMetaType::Bool,   40,   37,
    QMetaType::Float, QMetaType::Int,   42,
    QMetaType::Int,
    QMetaType::Int,
    QMetaType::Int,
    QMetaType::Int,
    QMetaType::QString,
    QMetaType::QString,
    QMetaType::Bool,
    QMetaType::QString,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Float,
    QMetaType::QString, QMetaType::Int,   55,
    QMetaType::Void,
    QMetaType::QString,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int, QMetaType::Float,   62,   63,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   62,   63,
    QMetaType::Void, QMetaType::Int, QMetaType::QString,   62,   66,
    QMetaType::Void,

       0        // eod
};

Q_CONSTINIT const QMetaObject SerialManagement::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_ZN16SerialManagementE.offsetsAndSizes,
    qt_meta_data_ZN16SerialManagementE,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_tag_ZN16SerialManagementE_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<SerialManagement, std::true_type>,
        // method 'microcontrollerConnectionStatus'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'coreDataReady'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'logUpdate'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'telemetryStatusIdle'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'telemetryStatusBoost'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'telemetryStatusAscent'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'telemetryStatusApogee'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'telemetryStatusMainChute'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'telemetryStatusTouchDown'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'manualBoostDetected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'manualApogeeDetected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'manualMainDetected'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'manualLandingDetected'
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
        // method 'cannotAcessDataInList'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'cannotAcessList'
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
        // method 'setBaudRateMode'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'serialRead'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'sendData'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getLastDataInList'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getMaxMinDataInList'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'getAbsMaxMinDataInLists'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        QtPrivate::TypeAndForceComplete<QList<int>, std::false_type>,
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'getDataConvertedImperial'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getTelemetryStatus'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getEstApogeeAlt'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getEstMainAlt'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getEstTouchDownAlt'
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'getFilePath'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getFileName'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'getMicroConfirmation'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        // method 'getLogMessage'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'flightTimerStart'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'flightTimerStop'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'getCurrentTimeSFloat'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getCurrentTimeMSmString'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'setReferenceTime'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'getActualTime'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'createFile'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'writeDataFile'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'closeFile'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'writeFloatValue'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'writeIntValue'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        // method 'writeStringValue'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        // method 'testMode'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void SerialManagement::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    auto *_t = static_cast<SerialManagement *>(_o);
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: _t->microcontrollerConnectionStatus((*reinterpret_cast< std::add_pointer_t<bool>>(_a[1]))); break;
        case 1: _t->coreDataReady(); break;
        case 2: _t->logUpdate(); break;
        case 3: _t->telemetryStatusIdle(); break;
        case 4: _t->telemetryStatusBoost(); break;
        case 5: _t->telemetryStatusAscent(); break;
        case 6: _t->telemetryStatusApogee(); break;
        case 7: _t->telemetryStatusMainChute(); break;
        case 8: _t->telemetryStatusTouchDown(); break;
        case 9: _t->manualBoostDetected(); break;
        case 10: _t->manualApogeeDetected(); break;
        case 11: _t->manualMainDetected(); break;
        case 12: _t->manualLandingDetected(); break;
        case 13: _t->portIsNotWritable(); break;
        case 14: _t->portIsNotReadable(); break;
        case 15: _t->portIsNotOpen(); break;
        case 16: _t->portNotFound(); break;
        case 17: _t->dataNotSent(); break;
        case 18: _t->cannotAcessDataInList(); break;
        case 19: _t->cannotAcessList(); break;
        case 20: { QList<QString> _r = _t->searchPortInfo();
            if (_a[0]) *reinterpret_cast< QList<QString>*>(_a[0]) = std::move(_r); }  break;
        case 21: _t->savePortConnection((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 22: _t->microcontrollerConnection(); break;
        case 23: _t->endConnection(); break;
        case 24: _t->setBaudRateMode((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 25: _t->serialRead(); break;
        case 26: _t->sendData((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 27: { float _r = _t->getLastDataInList((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 28: { float _r = _t->getMaxMinDataInList((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<bool>>(_a[2])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 29: { float _r = _t->getAbsMaxMinDataInLists((*reinterpret_cast< std::add_pointer_t<QList<int>>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<bool>>(_a[2])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 30: { float _r = _t->getDataConvertedImperial((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 31: { int _r = _t->getTelemetryStatus();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 32: { int _r = _t->getEstApogeeAlt();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 33: { int _r = _t->getEstMainAlt();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 34: { int _r = _t->getEstTouchDownAlt();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 35: { QString _r = _t->getFilePath();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 36: { QString _r = _t->getFileName();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 37: { bool _r = _t->getMicroConfirmation();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 38: { QString _r = _t->getLogMessage();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 39: _t->flightTimerStart(); break;
        case 40: _t->flightTimerStop(); break;
        case 41: { float _r = _t->getCurrentTimeSFloat();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 42: { QString _r = _t->getCurrentTimeMSmString((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 43: _t->setReferenceTime(); break;
        case 44: { QString _r = _t->getActualTime();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 45: _t->createFile(); break;
        case 46: _t->writeDataFile(); break;
        case 47: _t->closeFile(); break;
        case 48: _t->writeFloatValue((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<float>>(_a[2]))); break;
        case 49: _t->writeIntValue((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2]))); break;
        case 50: _t->writeStringValue((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2]))); break;
        case 51: _t->testMode(); break;
        default: ;
        }
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
        case 29:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
            case 0:
                *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType::fromType< QList<int> >(); break;
            }
            break;
        }
    }
    if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _q_method_type = void (SerialManagement::*)(bool );
            if (_q_method_type _q_method = &SerialManagement::microcontrollerConnectionStatus; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::coreDataReady; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::logUpdate; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::telemetryStatusIdle; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::telemetryStatusBoost; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::telemetryStatusAscent; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::telemetryStatusApogee; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::telemetryStatusMainChute; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::telemetryStatusTouchDown; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 8;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::manualBoostDetected; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 9;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::manualApogeeDetected; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 10;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::manualMainDetected; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 11;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::manualLandingDetected; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 12;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::portIsNotWritable; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 13;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::portIsNotReadable; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 14;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::portIsNotOpen; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 15;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::portNotFound; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 16;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::dataNotSent; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 17;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::cannotAcessDataInList; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 18;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::cannotAcessList; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 19;
                return;
            }
        }
    }
}

const QMetaObject *SerialManagement::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *SerialManagement::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_ZN16SerialManagementE.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int SerialManagement::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 52)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 52;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 52)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 52;
    }
    return _id;
}

// SIGNAL 0
void SerialManagement::microcontrollerConnectionStatus(bool _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(std::addressof(_t1))) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void SerialManagement::coreDataReady()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void SerialManagement::logUpdate()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void SerialManagement::telemetryStatusIdle()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void SerialManagement::telemetryStatusBoost()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void SerialManagement::telemetryStatusAscent()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void SerialManagement::telemetryStatusApogee()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void SerialManagement::telemetryStatusMainChute()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void SerialManagement::telemetryStatusTouchDown()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}

// SIGNAL 9
void SerialManagement::manualBoostDetected()
{
    QMetaObject::activate(this, &staticMetaObject, 9, nullptr);
}

// SIGNAL 10
void SerialManagement::manualApogeeDetected()
{
    QMetaObject::activate(this, &staticMetaObject, 10, nullptr);
}

// SIGNAL 11
void SerialManagement::manualMainDetected()
{
    QMetaObject::activate(this, &staticMetaObject, 11, nullptr);
}

// SIGNAL 12
void SerialManagement::manualLandingDetected()
{
    QMetaObject::activate(this, &staticMetaObject, 12, nullptr);
}

// SIGNAL 13
void SerialManagement::portIsNotWritable()
{
    QMetaObject::activate(this, &staticMetaObject, 13, nullptr);
}

// SIGNAL 14
void SerialManagement::portIsNotReadable()
{
    QMetaObject::activate(this, &staticMetaObject, 14, nullptr);
}

// SIGNAL 15
void SerialManagement::portIsNotOpen()
{
    QMetaObject::activate(this, &staticMetaObject, 15, nullptr);
}

// SIGNAL 16
void SerialManagement::portNotFound()
{
    QMetaObject::activate(this, &staticMetaObject, 16, nullptr);
}

// SIGNAL 17
void SerialManagement::dataNotSent()
{
    QMetaObject::activate(this, &staticMetaObject, 17, nullptr);
}

// SIGNAL 18
void SerialManagement::cannotAcessDataInList()
{
    QMetaObject::activate(this, &staticMetaObject, 18, nullptr);
}

// SIGNAL 19
void SerialManagement::cannotAcessList()
{
    QMetaObject::activate(this, &staticMetaObject, 19, nullptr);
}
QT_WARNING_POP
