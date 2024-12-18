#include "uiconstants.h"

UiConstants::UiConstants(QObject *parent)
    : QObject{parent}
{}

QString UiConstants::appName()
{
    return _appName;
}


int UiConstants::appPredWidth()
{
    return _appPredWidth;
}

int UiConstants::appPredHeight()
{
    return _appPredHeight;
}

int UiConstants::buttonLateralSpacing()
{
    return _buttonLateralSpacing;
}
