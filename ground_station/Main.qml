import QtQuick
import QtQuick.Controls
import QtGraphs
import QtQuick.VirtualKeyboard

import Constants 1.0


ApplicationWindow {
    id: window
    width: constants.appPredWidth()
    height: constants.appPredHeight()
    visible: true
    title: qsTr(constants.appName())

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

        Column {
            id: column
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0

            Button {
                id: button
                height: (column.height -(constants.buttonLateralSpacing()*6))/5
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
            }

            Button {
                id: button1
                height: (column.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 2")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: button.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
            }

            Button {
                id: button2
                height: (column.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 3")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: button1.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
            }

            Button {
                id: button3
                height: (column.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 4")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: button2.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
            }

            Button {
                id: button4
                height: (column.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 5")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: button3.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
            }
        }
    }

    //------------------- Altitude graph ------------------

    GraphsView {
        id: line
        width: parent.width*0.40
        height: parent.height*0.40
        anchors.left: lateral_menu.right
        anchors.top: txt_app_tittle.bottom
        anchors.leftMargin: 50
        anchors.topMargin: 25

        theme: GraphsTheme {
        backgroundColor: "#f342ff"
        backgroundVisible: false

        grid.mainColor: "cyan"
        grid.subColor: "blue"

        plotAreaBackgroundColor : "white"
        plotAreaBackgroundVisible: false

        labelBackgroundColor: "black"
        labelBackgroundVisible: true
        labelBorderVisible: false
        labelTextColor: "white"

        seriesColors:["red", "blue","green"]
        }

        axisX: ValueAxis {
            titleText: "Time (s)"
            max: 5
            tickInterval: 1
        }

        axisY: ValueAxis {
                min: -1
                max: 3
        }

        LineSeries {
            id: lineSeries
            XYPoint { x: 0.5; y: 0.5 }
            XYPoint { x: 1; y: 1 }
            XYPoint { x: 2; y: 2 }
            XYPoint { x: 2.5; y: 1.5 }
        }

        LineSeries {
            id: lineSeries2
            XYPoint { x: 0.5; y: 0.5+0.5 }
            XYPoint { x: 1; y: 1 +0.5}
            XYPoint { x: 2; y: 2 +0.5}
            XYPoint { x: 2.5; y: 1.5+0.5 }
        }

        LineSeries {
            id: lineSeries3
            XYPoint { x: 0.5; y: 0.5 -0.5}
            XYPoint { x: 1; y: 1 -0.5}
            XYPoint { x: 2; y: 2 -0.5}
            XYPoint { x: 2.5; y: 1.5-0.5 }
        }
    }

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
