// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import Ground_station
import QtQuick.VirtualKeyboard

Window {
    width: Constants.width
    height: Constants.height

    visible: true
    title: "Ground_station"

    Loader {
        id: loader
        anchors.fill: parent
        source: "CameraAndTelemetry.qml"
    }


    InputPanel {
        id: inputPanel
        property bool showKeyboard :  active
        y: showKeyboard ? parent.height - height : parent.height
        Behavior on y {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
        anchors.leftMargin: Constants.width/10
        anchors.rightMargin: Constants.width/10
        anchors.left: parent.left
        anchors.right: parent.right
    }

    /*Timer {
        id: timer
        interval: 2000
        repeat: false
        running: true
        onTriggered: loader.source="MainScreen.qml"
    }*/
}

