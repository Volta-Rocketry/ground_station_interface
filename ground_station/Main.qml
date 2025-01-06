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

    // ------------------- Information Message Manage -------------------
    Connections{
        target: serialConfig
        function onPortIsNotWritable(){
            txtTittle.text = "Error #1: Not Writable"
            txtMainText.text = "Can not open the port selected with full permissions, port is not writable"
            informationMessage.visible = true
        }
        function onPortIsNotReadable(){
            txtTittle.text = "Error #2: Not Readable"
            txtMainText.text = "Can not open the port selected with full permissions, port is not readable"
            informationMessage.visible = true
        }
        function onPortIsNotOpen(){
            txtTittle.text = "Error #3: Not Open"
            txtMainText.text = "Can not open the port selected, check connections, permissions and that the port is not open by other app"
            informationMessage.visible = true
        }
        function onPortNotFound(){
            txtTittle.text = "Error #4: Not found"
            txtMainText.text = "Port selected can not be found, please check it is connected"
            informationMessage.visible = true
        }
    }

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

    Rectangle {
        id: informationMessage
        width: parent.height*0.729
        height: parent.height*0.417
        color: "#283747"
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        visible: false

        Rectangle {
            id: rectErrorMessageTittle
            width: parent.height*1
            height: parent.height*0.175
            color: "#eb5e24"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Text {
                id: txtTittle
                text: qsTr("Message Tittle #9999")
                anchors.fill: parent
                font.pixelSize: informationMessage.height*0.08
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: btnClose
            y: 147
            width: 120
            height: 45
            color: "#eb5e24"
            radius: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height*0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: _text
                text: qsTr("Close")
                anchors.fill: parent
                font.pixelSize: informationMessage.height*0.09
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            MouseArea {
               anchors.fill: parent
               onClicked: informationMessage.visible = false
            }
        }

        Text {
            id: txtMainText
            color: "#ffffff"
            text: qsTr("This is the space where the message and information is going to be displayed")
            wrapMode: Text.Wrap
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectErrorMessageTittle.bottom
            anchors.bottom: btnClose.top
            anchors.leftMargin: 35
            anchors.rightMargin: 35
            anchors.topMargin: 15
            anchors.bottomMargin: 15
            font.pixelSize: parent.height*0.07
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            textFormat: Text.PlainText
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
