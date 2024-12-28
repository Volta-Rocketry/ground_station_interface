#include "uiconstants.h"

UiConstants::UiConstants(QObject *parent)
    : QObject{parent}
{}

QString UiConstants::appName()
{
    return _appName;
}

QString UiConstants::mainBackgroundColor()
{
    return _mainBackgroundColor;
}

QString UiConstants::graphsGridMainColor()
{
    return _graphsGridMainColor;
}

QString UiConstants::graphsTextMainColor()
{
    return _graphsTextMainColor;
}

QString UiConstants::mainColor()
{
    return _mainColor;
}

QString UiConstants::alternativeColor()
{
    return _alternativeColor;
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
