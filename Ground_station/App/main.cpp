// Copyright (C) 2024 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QFontDatabase>

#include "autogen/environment.h"
#include "serialmanagement.h"

int main(int argc, char *argv[])
{
    set_qt_environment();
    QGuiApplication app(argc, argv);

    int fontId = QFontDatabase::addApplicationFont(":/fonts/Nasalization.otf");
    if (fontId < 0) {
        qWarning() << "No se pudo cargar la fuente Nasalization.";
    } else {
        QString fontFamily = QFontDatabase::applicationFontFamilies(fontId).at(0);
        qDebug() << "Fuente Nasalization cargada como:" << fontFamily;
        // Opcionalmente hacerla global:
        // app.setFont(QFont(fontFamily));
    }

    SerialManagement serialManagement;

    QQmlApplicationEngine engine;

    const QUrl url(mainQmlFile);

    engine.rootContext()->setContextProperty("serialManager", &serialManagement);

    QObject::connect(
                &engine, &QQmlApplicationEngine::objectCreated, &app,
                [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.addImportPath(QCoreApplication::applicationDirPath() + "/qml");
    engine.addImportPath(":/");
    engine.load(url);

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
