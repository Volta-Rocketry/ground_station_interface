#include <QtQml/qqmlprivate.h>
#include <QtCore/qdir.h>
#include <QtCore/qurl.h>
#include <QtCore/qhash.h>
#include <QtCore/qstring.h>

namespace QmlCacheGeneratedCode {
namespace _qt_qml_Ground_stationContent_SplashScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_MainScreenForm_ui_0x2e_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_CameraAndTelemetryForm_ui_0x2e_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_SplashScreenForm_ui_0x2e_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_App_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_MainScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_ConfigurationScreenForm_ui_0x2e_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_CameraAndTelemetry_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}
namespace _qt_qml_Ground_stationContent_ConfigurationScreen_qml { 
    extern const unsigned char qmlData[];
    extern const QQmlPrivate::AOTCompiledFunction aotBuiltFunctions[];
    const QQmlPrivate::CachedQmlUnit unit = {
        reinterpret_cast<const QV4::CompiledData::Unit*>(&qmlData), &aotBuiltFunctions[0], nullptr
    };
}

}
namespace {
struct Registry {
    Registry();
    ~Registry();
    QHash<QString, const QQmlPrivate::CachedQmlUnit*> resourcePathToCachedUnit;
    static const QQmlPrivate::CachedQmlUnit *lookupCachedUnit(const QUrl &url);
};

Q_GLOBAL_STATIC(Registry, unitRegistry)


Registry::Registry() {
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/SplashScreen.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_SplashScreen_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/MainScreenForm.ui.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_MainScreenForm_ui_0x2e_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/CameraAndTelemetryForm.ui.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_CameraAndTelemetryForm_ui_0x2e_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/SplashScreenForm.ui.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_SplashScreenForm_ui_0x2e_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/App.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_App_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/MainScreen.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_MainScreen_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/ConfigurationScreenForm.ui.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_ConfigurationScreenForm_ui_0x2e_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/CameraAndTelemetry.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_CameraAndTelemetry_qml::unit);
    resourcePathToCachedUnit.insert(QStringLiteral("/qt/qml/Ground_stationContent/ConfigurationScreen.qml"), &QmlCacheGeneratedCode::_qt_qml_Ground_stationContent_ConfigurationScreen_qml::unit);
    QQmlPrivate::RegisterQmlUnitCacheHook registration;
    registration.structVersion = 0;
    registration.lookupCachedQmlUnit = &lookupCachedUnit;
    QQmlPrivate::qmlregister(QQmlPrivate::QmlUnitCacheHookRegistration, &registration);
}

Registry::~Registry() {
    QQmlPrivate::qmlunregister(QQmlPrivate::QmlUnitCacheHookRegistration, quintptr(&lookupCachedUnit));
}

const QQmlPrivate::CachedQmlUnit *Registry::lookupCachedUnit(const QUrl &url) {
    if (url.scheme() != QLatin1String("qrc"))
        return nullptr;
    QString resourcePath = QDir::cleanPath(url.path());
    if (resourcePath.isEmpty())
        return nullptr;
    if (!resourcePath.startsWith(QLatin1Char('/')))
        resourcePath.prepend(QLatin1Char('/'));
    return unitRegistry()->resourcePathToCachedUnit.value(resourcePath, nullptr);
}
}
int QT_MANGLE_NAMESPACE(qInitResources_qmlcache_Ground_stationContent)() {
    ::unitRegistry();
    return 1;
}
Q_CONSTRUCTOR_FUNCTION(QT_MANGLE_NAMESPACE(qInitResources_qmlcache_Ground_stationContent))
int QT_MANGLE_NAMESPACE(qCleanupResources_qmlcache_Ground_stationContent)() {
    return 1;
}
