#ifndef UICONSTANTS_H
#define UICONSTANTS_H

#include <QObject>

class UiConstants : public QObject
{
    Q_OBJECT
public:
    explicit UiConstants(QObject *parent = nullptr);

private:

    QString _appName = "Volta - Ground Station";

    QString _mainBackgroundColor = "#e8e8e8";
    QString _graphsGridMainColor = "black";
    QString _graphsTextMainColor = "black";

    QString _mainColor = "#eb5e24";
    QString _alternativeColor = "#283747";


    int _appPredWidth = 800;
    int _appPredHeight = 480;

    int _buttonLateralSpacing = 0;

public slots:
    QString appName();
    QString mainBackgroundColor();
    QString graphsGridMainColor();
    QString graphsTextMainColor();

    QString mainColor();
    QString alternativeColor();


    int appPredWidth();
    int appPredHeight();

    int buttonLateralSpacing();


signals:
};

#endif // UICONSTANTS_H
