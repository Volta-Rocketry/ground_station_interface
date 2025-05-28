// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only
import QtQuick
import Ground_station

//import QtQuick.VirtualKeyboard
Window {
    id: mainWindowScreen
    width: Constants.width
    height: Constants.height

    visible: true
    title: "Ground_station"
    visibility: "FullScreen"

    FocusScope {
        width: parent.width
        height: parent.height
        focus: true
        Component.onCompleted: forceActiveFocus() // Forzar el foco al cargar

        Keys.onPressed: event => {
                            console.log("Key:", event.key, "Text:", event.text,
                                        "Modifiers:", event.modifiers)
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
                            } else if (event.key === Qt.Key_T) {
                                console.log("Reference time reset manually")
                                serialManager.setReferenceTime()
                            } else if (event.key === Qt.Key_Z) {
                                console.log("Comando Z")
                                serialManager.sendData('z')
                            } else if (event.key === Qt.Key_X) {
                                console.log("Comando X")
                                serialManager.sendData('x')
                            } else if (event.key === Qt.Key_F) {
                                console.log("Comando f")
                                serialManager.sendData(
                                    'f') // Apagado remoto de camaras
                            } else if (event.key === Qt.Key_O) {
                                console.log("Comando O")
                                serialManager.sendData(
                                    'o') // Enendido remoto de camaras
                            } else if (event.key === Qt.Key_S) {
                                console.log("Comando S")
                                serialManager.sendData(
                                    's') // Confirmación Para estación terrena
                            } else if (event.key === Qt.Key_L) {
                                console.log("Comando L")
                                serialManager.sendFrequencyChange(
                                    ) // Cambio de frequencia
                            } else if (event.key === Qt.Key_C) {
                                console.log("Comando C")
                                if (loader.source == "MainScreen.qml") {
                                    loader.source = "CameraAndTelemetry.qml"
                                } else {
                                    loader.source = "MainScreen.qml"
                                }
                            } else if (event.key === Qt.Key_P) {
                                console.log("Comando P")
                                if (mainWindowScreen.visibility == Window.FullScreen) {
                                    mainWindowScreen.visibility = Window.Maximized
                                } else {
                                    mainWindowScreen.visibility = Window.FullScreen
                                }
                            } else if (event.key === Qt.Key_F1) {
                                loader.item.sectionTimeLine.visible
                                = !loader.item.sectionTimeLine.visible // Section timeline
                            } else if (event.key === Qt.Key_F2) {
                                loader.item.sectionMainData.visible
                                = !loader.item.sectionMainData.visible // Section timeline
                            } else if (event.key === Qt.Key_F3) {
                                loader.item.sectionTimer.visible
                                = !loader.item.sectionTimer.visible // Section timeline
                            } else if (event.key === Qt.Key_F4) {
                                loader.item.sectionStatusInfo.visible
                                = !loader.item.sectionStatusInfo.visible // Section timeline
                            } else if (event.key === Qt.Key_F5) {
                                loader.item.rectangle6.visible
                                = !loader.item.rectangle6.visible // Section timeline
                            } else if (event.key === Qt.Key_F6) {
                                console.log("Entro en F6")
                                if (loader.item && loader.item.txtLog) {
                                    let currentColor = loader.item.txtLog.color.toString()
                                    console.log("Color actual:", currentColor)
                                    loader.item.txtLog.color = (currentColor === "#ffffff") ? "#000000" : "#ffffff"
                                }
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

    // InputPanel {
    //     id: inputPanel
    //     property bool showKeyboard: active
    //     y: showKeyboard ? parent.height - height : parent.height
    //     Behavior on y {
    //         NumberAnimation {
    //             duration: 200
    //             easing.type: Easing.InOutQuad
    //         }
    //     }
    //     anchors.leftMargin: Constants.width / 10
    //     anchors.rightMargin: Constants.width / 10
    //     anchors.left: parent.left
    //     anchors.right: parent.right
    // }


    /*Timer {
        id: timer
        interval: 2000
        repeat: false
        running: true
        onTriggered: loader.source="MainScreen.qml"
    }*/
}
