import QtQuick 2.0
import QtQuick.Controls


Rectangle {

    id: rectangle
    color: "#b69dff"
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.leftMargin: 0
    anchors.rightMargin: 0
    anchors.topMargin: 0
    anchors.bottomMargin: 0

    Button {
        id: btnSearchPort
        text: qsTr("Search port")
        anchors.left: txtAppMainTitle.horizontalCenter
        anchors.top: edtBaudRate.bottom
        anchors.leftMargin: -btnSearchPort.width/2-100
        anchors.topMargin: 50

        onClicked:{

            comboBoxListModel.clear();

            comboBoxListModel.append({key: "Test Mode"});

            let ports = serialConfig.searchPortInfo();

            for (let i = 0; i < ports.length; i++) {
                comboBoxListModel.append({ key: ports[i] });
            }
        }
    }

    Text {
        id: txtBaudRate
        width: 176
        height: 32
        text: qsTr("Baud rate")
        anchors.left: txtAppMainTitle.horizontalCenter
        anchors.top: txtAppMainTitle.bottom
        anchors.leftMargin: -txtBaudRate.width/2
        anchors.topMargin: 31
        font.pixelSize: 24
        horizontalAlignment: Text.AlignHCenter
        transformOrigin: Item.Center
    }

    TextInput {
        id: edtBaudRate
        width: 159
        height: 38
        text: qsTr("9600")
        anchors.left: txtAppMainTitle.horizontalCenter
        anchors.top: txtBaudRate.bottom
        anchors.leftMargin: -edtBaudRate.width/2
        anchors.topMargin: 13
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        id: txtAppMainTitle
        width: 375
        height: 85
        text: qsTr("App name")
        anchors.left: parent.horizontalCenter
        anchors.top: parent.top
        anchors.leftMargin: -txtAppMainTitle.width/2
        anchors.topMargin: 40
        font.pixelSize: 56
        horizontalAlignment: Text.AlignHCenter
        transformOrigin: Item.Center
    }

    ComboBox {
        id: comboBox
        width: 200
        height: 50
        anchors.left: btnSearchPort.right
        anchors.top: edtBaudRate.bottom
        anchors.leftMargin: 50
        anchors.topMargin: 50

        currentIndex: 0
        model: comboBoxListModel

        ListModel{
            id: comboBoxListModel
            ListElement{ key: "Test Mode"}
        }

        onActivated:{
            console.log("Selected index: ",comboBox.currentIndex)
            console.log("Selected text: ",comboBox.currentText)
            console.log("Selected value: ",comboBox.currentValue)
            serialConfig.savePortConnection(comboBox.currentText)

        }
    }
}
