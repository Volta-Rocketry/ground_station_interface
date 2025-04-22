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

    FocusScope {
        width: parent.width
        height: parent.height
        focus: true
        Component.onCompleted: forceActiveFocus() // Forzar el foco al cargar


        Keys.onPressed: event => {
                            //console.log("Tecla presionada:", event.key) // Debug
                            if (event.key === Qt.Key_Enter
                                || event.key === Qt.Key_Return) {
                                console.log("Se presionó Enter")
                                serialManager.createFile()
                            } else if (event.key === Qt.Key_Delete) {
                                console.log("Se presionó Delete")
                                serialManager.closeFile()
                            } else if (event.key === Qt.Key_Q) {
                                console.log("Se activó manualmente boost")
                                serialManager.manualBoostDetected()
                                serialManager.closeFile()
                            } else if (event.key === Qt.Key_W) {
                                console.log("Se activó manualmente apogee")
                                serialManager.manualApogeeDetected()
                            } else if (event.key === Qt.Key_E) {
                                console.log("Se activó manualmente main")
                                serialManager.manualMainDetected()
                            } else if (event.key === Qt.Key_R) {
                                console.log("Se activó manualmente landing")
                                serialManager.manualLandingDetected()
                            } else if(event.key === Qt.Key_T){
                                   console.log("Reference time reset manually")
                                serialManager.setReferenceTime()
                            }
                        }

        Loader {
            id: loader
            anchors.fill: parent
            source: "CameraAndTelemetry.qml"

            onLoaded: {
                forceActiveFocus(
                            ) // Asegurarse de que el foco esté en el scope adecuado
            }
        }
    }

    InputPanel {
        id: inputPanel
        property bool showKeyboard: active
        y: showKeyboard ? parent.height - height : parent.height
        Behavior on y {
            NumberAnimation {
                duration: 200
                easing.type: Easing.InOutQuad
            }
        }
        anchors.leftMargin: Constants.width / 10
        anchors.rightMargin: Constants.width / 10
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
