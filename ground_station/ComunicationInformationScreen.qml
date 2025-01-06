import QtQuick 2.0
import QtQuick.Controls

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: constants.mainBackgroundColor()


        Button {
            id: btnCalibration
            x: 117
            width: parent.height*0.313
            height: parent.height*0.131
            text: qsTr("Calibration")
            anchors.verticalCenter: btnEndFlight.verticalCenter
            anchors.right: btnEndFlight.left
            anchors.rightMargin: parent.height*0.052
            onClicked: serialConfig.sendData("A");
        }

        Button {
            id: btnGetGpsData
            width: parent.height*0.313
            height: parent.height*0.131
            text: qsTr("Get GPS Data")
            anchors.verticalCenter: btnEndFlight.verticalCenter
            anchors.left: btnEndFlight.right
            anchors.leftMargin: parent.height*0.052
            onClicked: serialConfig.sendData("B");
        }

        DelayButton {
            id: btnEndFlight
            width: parent.height*0.483
            height: parent.height*0.366
            text: qsTr("END  Flight")
            anchors.top: txtTittleComunications.bottom
            anchors.topMargin: parent.height*0.131
            delay: 1000
            anchors.horizontalCenter: parent.horizontalCenter
            onActivated: serialConfig.sendData("C");
        }

        Button {
            id: btn1
            width: parent.height*0.131
            height: btn1.width
            text: "1"
            anchors.top: btnCalibration.bottom
            anchors.topMargin: parent.height*0.026
            anchors.horizontalCenterOffset: parent.height*-0.07
            anchors.horizontalCenter: btnCalibration.horizontalCenter
            onClicked: serialConfig.sendData(txtInputConfigBtn1.text);
        }

        Button {
            id: btn2
            width: parent.height*0.131
            height: btn2.width
            text: "2"
            anchors.verticalCenter: btn1.verticalCenter
            anchors.left: btn1.right
            anchors.leftMargin: parent.height*0.013
            onClicked: serialConfig.sendData(txtInputConfigBtn2.text);
        }

        Button {
            id: btn3
            width: parent.height*0.131
            height: btn3.width
            text: "3"
            anchors.verticalCenter: btn2.verticalCenter
            anchors.horizontalCenterOffset: parent.height*-0.07
            anchors.horizontalCenter: btnGetGpsData.horizontalCenter
            onClicked: serialConfig.sendData(txtInputConfigBtn3.text);
        }

        Button {
            id: btn4
            width: parent.height*0.131
            height: btn4.width
            text: "4"
            anchors.verticalCenter: btn3.verticalCenter
            anchors.left: btn3.right
            anchors.leftMargin: parent.height*0.013
            onClicked: serialConfig.sendData(txtInputConfigBtn4.text);
        }

        TextInput {
            id: txtInputConfigBtn1
            width: parent.height*0.073
            height: parent.height*0.052
            text: qsTr("1")
            anchors.verticalCenter: txtTittleConfigBtn1.verticalCenter
            anchors.left: txtTittleConfigBtn1.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height*0.031
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: txtTittleConfigBtn1
            text: qsTr("Btn 1")
            anchors.top: _text1.bottom
            anchors.topMargin: parent.height*0.039
            font.pixelSize: parent.height*0.031
            anchors.horizontalCenterOffset: parent.height*-0.313
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: _text1
            text: qsTr("Configuration")
            anchors.top: btnEndFlight.bottom
            anchors.topMargin: parent.height*0.17
            font.pixelSize: parent.height*0.052
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextInput {
            id: txtInputConfigBtn2
            width: parent.height*0.073
            height: parent.height*0.052
            text: qsTr("2")
            anchors.verticalCenter: txtTittleConfigBtn2.verticalCenter
            anchors.left: txtTittleConfigBtn2.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height*0.031
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: txtTittleConfigBtn2
            text: qsTr("Btn 2")
            anchors.verticalCenter: txtTittleConfigBtn1.verticalCenter
            anchors.left: txtInputConfigBtn1.right
            anchors.leftMargin: parent.height*0.039
            font.pixelSize: parent.height*0.031
            anchors.verticalCenterOffset: 0
        }

        TextInput {
            id: txtInputConfigBtn3
            width: parent.height*0.073
            height: parent.height*0.052
            text: qsTr("3")
            anchors.verticalCenter: txtTittleConfigBtn3.verticalCenter
            anchors.left: txtTittleConfigBtn3.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height*0.031
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: txtTittleConfigBtn3
            text: qsTr("Btn 3")
            anchors.verticalCenter: txtTittleConfigBtn2.verticalCenter
            anchors.left: txtInputConfigBtn2.right
            anchors.leftMargin: parent.height*0.039
            font.pixelSize: parent.height*0.031
        }

        TextInput {
            id: txtInputConfigBtn4
            width: parent.height*0.073
            height: parent.height*0.052
            text: qsTr("4")
            anchors.verticalCenter: txtTittleConfigBtn4.verticalCenter
            anchors.left: txtTittleConfigBtn4.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height*0.031
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: txtTittleConfigBtn4
            text: qsTr("Btn 4")
            anchors.verticalCenter: txtTittleConfigBtn3.verticalCenter
            anchors.left: txtInputConfigBtn3.right
            anchors.leftMargin: parent.height*0.039
            font.pixelSize: parent.height*0.031
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: txtTittleComunications
            text: qsTr("Communications")
            anchors.top: parent.top
            anchors.topMargin: 0
            font.pixelSize: 28
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
