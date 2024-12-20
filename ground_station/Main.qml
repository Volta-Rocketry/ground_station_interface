import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard

import Constants 1.0

ApplicationWindow {
    id: window
    width: constants.appPredWidth()
    height: constants.appPredHeight()
    visible: true
    title: qsTr(constants.appName())
    color: constants.mainBackgroundColor()

    // ------------------- Backend  -------------------

    Const{
        id: constants
    }    

    // ------------------- App Tittle -------------------

    Text {
        id: txt_app_tittle
        x: parent.width/2 - txt_app_tittle.width/2
        text: qsTr(constants.appName())
        anchors.top: parent.top
        anchors.topMargin: 15
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    // ------------------- Info 1 Section -------------------
    Rectangle {
        id: info1_section
        width: info1_section.height*0.17
        color: "#000000"
        radius: 23
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: -info1_section.width/2
        anchors.topMargin: 65
        anchors.bottomMargin: 65
    }

    // ------------------- Info 2 Section -------------------
    Rectangle {
        id: info2_section
        x: parent.width/2 - info2_section.width/2
        height: info2_section.width*0.20
        color: "#000000"
        radius: 25
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 250
        anchors.rightMargin: 250
        anchors.bottomMargin: -info2_section.height/2
    }

    // ------------------- Lateral menu -------------------

    Rectangle {
        id: lateral_menu
        width: lateral_menu.height *0.10
        color: "#27c235"
        radius: 20
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 10
        anchors.topMargin: 40
        anchors.bottomMargin: 40



        Button {
            id: btn_go_motion_information_screen
            height: (parent.height -(constants.buttonLateralSpacing()*6))/5
            text: qsTr("Button 1")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: constants.buttonLateralSpacing()

            background: Rectangle {
                    color: "transparent" // Transparent background
                    border.color: "transparent" // Optional: make the border invisible
                }
            onClicked: loader.source = "MotionInformationScreen.qml"
        }

        Button {
            id: btn_go_gps_information_screen
            height: (parent.height -(constants.buttonLateralSpacing()*6))/5
            text: qsTr("Button 2")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: btn_go_motion_information_screen.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: constants.buttonLateralSpacing()
            onClicked: loader.source = "GpsInformationScreen.qml"
        }

        Button {
            id: btn_go_eyection_information_screen
            height: (parent.height -(constants.buttonLateralSpacing()*6))/5
            text: qsTr("Button 3")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: btn_go_gps_information_screen.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: constants.buttonLateralSpacing()
            onClicked: loader.source = "EyectionInformationScreen.qml"

        }

        Button {
            id: btn_go_communication_information_screen
            height: (parent.height -(constants.buttonLateralSpacing()*6))/5
            text: qsTr("Button 4")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: btn_go_eyection_information_screen.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: constants.buttonLateralSpacing()
            onClicked: loader.source = "ComunicationInformationScreen.qml"

        }

        Button {
            id: btn_go_general_information_screen
            height: (parent.height -(constants.buttonLateralSpacing()*6))/5
            text: qsTr("Button 5")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: btn_go_communication_information_screen.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: constants.buttonLateralSpacing()
            onClicked: loader.source = "GeneralInformationScreen.qml"

        }

    }

    //------------------- Loader ------------------

    Loader {
        id: loader
        anchors.left: lateral_menu.right
        anchors.right: info1_section.left
        anchors.top: txt_app_tittle.bottom
        anchors.bottom: info2_section.top
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.topMargin: 10
        anchors.bottomMargin: 10

        source: "MotionInformationScreen.qml"
    }

    //------------------- ***** ------------------

    //------------------- Virtual Keyboard ------------------
    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
