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
        width: parent.height*0.417
        height: parent.height*0.167
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height*0.021
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            screenLoader.source = "PrincipalScreen.qml"
            btnConnect.visible = false
            btnGoBack.visible = true
            serialConfig.microcontrollerConnection()
        }
    }


    Image {
        id: btnGoBack
        width: parent.height*0.073
        height: btnGoBack.width
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: parent.height*0.031
        anchors.topMargin: parent.height*0.031
        source: "assets/images/go_back"
        fillMode: Image.PreserveAspectFit

        visible: false

        MouseArea {
           anchors.fill: parent
           onClicked: {
               screenLoader.source = "StartScreen.qml"
               btnConnect.visible = true
               btnGoBack.visible = false
               serialConfig.endConnection()
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
