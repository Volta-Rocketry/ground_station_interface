#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQuickStyle>


#include "uiconstants.h"
#include "serialconfiguration.h"
#include "graphdata.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QGuiApplication app(argc, argv);

    QQuickStyle::setStyle("Fusion");


    // Crear instancias de las clases
    UiConstants uiConstants;
    GraphData graphData;
    SerialConfiguration serialConfiguration;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("constants", &uiConstants);
    engine.rootContext()->setContextProperty("graphUpdater", &graphData);
    engine.rootContext()->setContextProperty("serialConfig", &serialConfiguration);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("ground_station", "Main");

    return app.exec();
}



