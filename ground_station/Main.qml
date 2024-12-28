import QtQuick
import QtQuick.Controls
import QtQuick.VirtualKeyboard

ApplicationWindow {

    // ------------------- Window config -------------------
    id: window
    width: constants.appPredWidth()
    height: constants.appPredHeight()
    visible: true
    title: qsTr(constants.appName())
    color: constants.mainBackgroundColor()

    // ------------------- Switch screens logic -------------------
    Loader {
        id: screenLoader
        anchors.fill: parent
        source: "StartScreen.qml" // Default screen
    }

    // ------------------- Buttons to change screens -------------------

    Button {
        id: btnConnect
        text: qsTr("Connect")
        anchors.left: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.leftMargin: -btnConnect.width/2
        anchors.topMargin: 250
        onClicked: {
            screenLoader.source = "PrincipalScreen.qml"
            btnConnect.visible = false
            btnSettings.visible = true
            serialConfig.microcontrollerConnection()
        }
    }

    Rectangle {
        id: btnSettings
        width: 50
        height: btnSettings.width
        color: "green"
        radius: btnSettings.width/2
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 10
        anchors.topMargin: 10

        visible: false

        MouseArea {
           anchors.fill: parent
           onClicked: {
               screenLoader.source = "StartScreen.qml"
               btnConnect.visible = true
               btnSettings.visible = false
           }
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
