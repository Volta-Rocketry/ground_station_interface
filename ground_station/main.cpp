#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "uiconstants.h"
#include "graphdata.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QGuiApplication app(argc, argv);

    qmlRegisterType <UiConstants> ("Constants",1,0,"Const");
    qmlRegisterType <GraphData> ("Backend",1,0,"GraphDataBackend");


    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("ground_station", "Main");

    return app.exec();
}
