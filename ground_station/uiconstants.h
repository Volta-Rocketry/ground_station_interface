#ifndef UICONSTANTS_H
#define UICONSTANTS_H

#include <QObject>

class UiConstants : public QObject
{
    Q_OBJECT
public:
    explicit UiConstants(QObject *parent = nullptr);

private:

    QString _appName = "<<App name>>";
    int _appPredWidth = 800;
    int _appPredHeight = 480;

    int _buttonLateralSpacing = 0;

public slots:
    QString appName();

    int appPredWidth();
    int appPredHeight();

    int buttonLateralSpacing();
signals:
};

#endif // UICONSTANTS_H
