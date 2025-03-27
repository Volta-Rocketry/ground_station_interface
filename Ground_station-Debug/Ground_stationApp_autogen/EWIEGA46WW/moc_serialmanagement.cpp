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
    "getCurrentTimeSFloat",
    "getCurrentTimeMSmString",
    "format",
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
      22,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    1,  146,    2, 0x06,    1 /* Public */,
       4,    0,  149,    2, 0x06,    3 /* Public */,
       5,    0,  150,    2, 0x06,    4 /* Public */,
       6,    0,  151,    2, 0x06,    5 /* Public */,
       7,    0,  152,    2, 0x06,    6 /* Public */,
       8,    0,  153,    2, 0x06,    7 /* Public */,
       9,    0,  154,    2, 0x06,    8 /* Public */,
      10,    0,  155,    2, 0x06,    9 /* Public */,
      11,    0,  156,    2, 0x06,   10 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
      12,    0,  157,    2, 0x0a,   11 /* Public */,
      13,    1,  158,    2, 0x0a,   12 /* Public */,
      15,    0,  161,    2, 0x0a,   14 /* Public */,
      16,    0,  162,    2, 0x0a,   15 /* Public */,
      17,    1,  163,    2, 0x0a,   16 /* Public */,
      19,    0,  166,    2, 0x0a,   18 /* Public */,
      20,    1,  167,    2, 0x0a,   19 /* Public */,
      22,    2,  170,    2, 0x0a,   21 /* Public */,
      25,    2,  175,    2, 0x0a,   24 /* Public */,
      27,    2,  180,    2, 0x0a,   27 /* Public */,
      30,    0,  185,    2, 0x0a,   30 /* Public */,
      31,    1,  186,    2, 0x0a,   31 /* Public */,
      33,    0,  189,    2, 0x08,   33 /* Private */,

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

 // slots: parameters
    QMetaType::QStringList,
    QMetaType::Void, QMetaType::QString,   14,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   18,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,   21,
    QMetaType::Float, QMetaType::Int, QMetaType::Int,   23,   24,
    QMetaType::Float, QMetaType::Int, QMetaType::Bool,   23,   26,
    QMetaType::Float, 0x80000000 | 28, QMetaType::Bool,   29,   26,
    QMetaType::Float,
    QMetaType::QString, QMetaType::Int,   32,
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
        // method 'getCurrentTimeSFloat'
        QtPrivate::TypeAndForceComplete<float, std::false_type>,
        // method 'getCurrentTimeMSmString'
        QtPrivate::TypeAndForceComplete<QString, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
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
        case 2: _t->portIsNotWritable(); break;
        case 3: _t->portIsNotReadable(); break;
        case 4: _t->portIsNotOpen(); break;
        case 5: _t->portNotFound(); break;
        case 6: _t->dataNotSent(); break;
        case 7: _t->cannotAcessDataInList(); break;
        case 8: _t->cannotAcessList(); break;
        case 9: { QList<QString> _r = _t->searchPortInfo();
            if (_a[0]) *reinterpret_cast< QList<QString>*>(_a[0]) = std::move(_r); }  break;
        case 10: _t->savePortConnection((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 11: _t->microcontrollerConnection(); break;
        case 12: _t->endConnection(); break;
        case 13: _t->setBaudRateMode((*reinterpret_cast< std::add_pointer_t<int>>(_a[1]))); break;
        case 14: _t->serialRead(); break;
        case 15: _t->sendData((*reinterpret_cast< std::add_pointer_t<QString>>(_a[1]))); break;
        case 16: { float _r = _t->getLastDataInList((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[2])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 17: { float _r = _t->getMaxMinDataInList((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<bool>>(_a[2])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 18: { float _r = _t->getAbsMaxMinDataInLists((*reinterpret_cast< std::add_pointer_t<QList<int>>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<bool>>(_a[2])));
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 19: { float _r = _t->getCurrentTimeSFloat();
            if (_a[0]) *reinterpret_cast< float*>(_a[0]) = std::move(_r); }  break;
        case 20: { QString _r = _t->getCurrentTimeMSmString((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])));
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = std::move(_r); }  break;
        case 21: _t->testMode(); break;
        default: ;
        }
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType(); break;
        case 18:
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
            if (_q_method_type _q_method = &SerialManagement::portIsNotWritable; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::portIsNotReadable; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::portIsNotOpen; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 4;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::portNotFound; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 5;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::dataNotSent; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 6;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::cannotAcessDataInList; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 7;
                return;
            }
        }
        {
            using _q_method_type = void (SerialManagement::*)();
            if (_q_method_type _q_method = &SerialManagement::cannotAcessList; *reinterpret_cast<_q_method_type *>(_a[1]) == _q_method) {
                *result = 8;
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
        if (_id < 22)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 22;
    }
    if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 22)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 22;
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
void SerialManagement::portIsNotWritable()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void SerialManagement::portIsNotReadable()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}

// SIGNAL 4
void SerialManagement::portIsNotOpen()
{
    QMetaObject::activate(this, &staticMetaObject, 4, nullptr);
}

// SIGNAL 5
void SerialManagement::portNotFound()
{
    QMetaObject::activate(this, &staticMetaObject, 5, nullptr);
}

// SIGNAL 6
void SerialManagement::dataNotSent()
{
    QMetaObject::activate(this, &staticMetaObject, 6, nullptr);
}

// SIGNAL 7
void SerialManagement::cannotAcessDataInList()
{
    QMetaObject::activate(this, &staticMetaObject, 7, nullptr);
}

// SIGNAL 8
void SerialManagement::cannotAcessList()
{
    QMetaObject::activate(this, &staticMetaObject, 8, nullptr);
}
QT_WARNING_POP
