import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Connections{
        target: serialConfig
        function onPyroContDataReady(){
            imgPyroA1.color = serialConfig.getPyroA1Color();
            imgPyroA2.color = serialConfig.getPyroA2Color();
            imgPyroA3.color = serialConfig.getPyroA3Color();
            imgPyroA4.color = serialConfig.getPyroA4Color();
            imgPyroA5.color = serialConfig.getPyroA5Color();
            imgPyroB1.color = serialConfig.getPyroB1Color();
            imgPyroB2.color = serialConfig.getPyroB2Color();
            imgPyroB3.color = serialConfig.getPyroB3Color();
            imgPyroB4.color = serialConfig.getPyroB4Color();
            imgPyroB5.color = serialConfig.getPyroB5Color();
        }
        function onChamberTempDataReady(){
            imgChamberTemp1.color = serialConfig.getChamber1TempColor()
            txtTempChamber1.text = serialConfig.getChamber1TempValue()
            imgChamberTemp2.color = serialConfig.getChamber2TempColor()
            txtTempChamber2.text = serialConfig.getChamber2TempValue()
            imgChamberTemp3.color = serialConfig.getChamber3TempColor()
            txtTempChamber3.text = serialConfig.getChamber3TempValue()
            imgChamberTemp4.color = serialConfig.getChamber4TempColor()
            txtTempChamber4.text = serialConfig.getChamber4TempValue()
        }
        function onCoreDataReady(){
            txtAltitude.text = serialConfig.getLastCurrentAltValue()
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height
        color:  constants.mainBackgroundColor()

        Text {
            id: txtManParachuttte
            text: qsTr("Main Parachutte")
            anchors.top: parent.top
            anchors.topMargin: parent.height*0.065
            font.pixelSize: parent.height*0.0679
            anchors.horizontalCenterOffset: parent.height*-0.392
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtDroogueParachutte
            text: qsTr("Drogue Parachutte")
            anchors.verticalCenter: txtManParachuttte.verticalCenter
            font.pixelSize: parent.height*0.068
            anchors.horizontalCenterOffset: parent.height*0.444
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtCO2MainParachutte
            text: qsTr("CO2")
            anchors.top: txtManParachuttte.bottom
            anchors.topMargin: parent.height*0.026
            font.pixelSize: parent.height*0.057
            anchors.horizontalCenter: txtManParachuttte.horizontalCenter
        }

        Text {
            id: txtCO2DrogueParachutte
            text: qsTr("CO2")
            anchors.top: txtDroogueParachutte.bottom
            anchors.topMargin: parent.height*0.026
            font.pixelSize: parent.height*0.057
            anchors.horizontalCenter: txtDroogueParachutte.horizontalCenter
        }



        Rectangle {
            id: imgPyroA1
            width: parent.height*0.065
            height: imgPyroA1.width
            color: serialConfig.getPyroA1Color();
            radius: imgPyroA1.width/2
            anchors.top: txtCO2MainParachutte.bottom
            anchors.topMargin: parent.height*0.0522
            anchors.horizontalCenterOffset: parent.height*-0.183
            anchors.horizontalCenter: txtCO2MainParachutte.horizontalCenter
        }

        Rectangle {
            id: imgPyroA2
            width: imgPyroA1.width
            height: imgPyroA2.width
            color: serialConfig.getPyroA2Color();
            radius: imgPyroA2.width/2
            anchors.top: imgPyroA1.bottom
            anchors.topMargin: parent.height*0.0522
            anchors.horizontalCenter: imgPyroA1.horizontalCenter
        }

        Text {
            id: txtPyroA1
            x: 66
            text: qsTr("A1")
            anchors.verticalCenter: imgPyroA1.verticalCenter
            anchors.right: imgPyroA1.left
            anchors.rightMargin: parent.height*0.026
            font.pixelSize: parent.height*0.0467
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: imgChamberTemp1
            width: parent.height*0.131
            height: imgChamberTemp1.width
            color: serialConfig.getChamber1TempColor();
            anchors.left: imgPyroA1.right
            anchors.top: imgPyroA1.bottom
            anchors.leftMargin: parent.height*0.065
            anchors.topMargin: parent.height*-0.044

            Text {
                id: txtTempChamber1
                text: serialConfig.getChamber1TempValue();
                anchors.fill: parent
                font.pixelSize: parent.height*0.367
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: imgChamberTemp2
            width: imgChamberTemp1.width
            height: imgChamberTemp2.width
            color:  serialConfig.getChamber2TempColor();
            anchors.verticalCenter: imgChamberTemp1.verticalCenter
            anchors.left: imgChamberTemp1.right
            anchors.leftMargin: parent.height*0.078

            Text {
                id: txtTempChamber2
                text:  serialConfig.getChamber2TempValue();
                anchors.fill: parent
                font.pixelSize: parent.height*0.367
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }


        }

        Text {
            id: txtPyroA2
            x: 66
            text: qsTr("A2")
            anchors.verticalCenter: imgPyroA2.verticalCenter
            anchors.right: imgPyroA2.left
            anchors.rightMargin: parent.height*0.026
            font.pixelSize: parent.height*0.0467
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: imgPyroA3
            width: parent.height*0.065
            height: imgPyroA3.width
            color: serialConfig.getPyroA3Color();
            radius: imgPyroA3.width/2
            anchors.top: txtCO2DrogueParachutte.bottom
            anchors.topMargin: parent.height*0.052
            anchors.horizontalCenterOffset: parent.height*-0.183
            anchors.horizontalCenter: txtCO2DrogueParachutte.horizontalCenter
        }

        Rectangle {
            id: imgPyroA4
            width: parent.height*0.065
            height: imgPyroA4.width
            color: serialConfig.getPyroA4Color();
            radius: imgPyroA4.width/2
            anchors.top: imgPyroA3.bottom
            anchors.topMargin: parent.height*0.052
            anchors.horizontalCenter: imgPyroA3.horizontalCenter
        }

        Text {
            id: txtPyroA3
            x: 425
            text: qsTr("A3")
            anchors.verticalCenter: imgPyroA3.verticalCenter
            anchors.right: imgPyroA3.left
            anchors.rightMargin: parent.height*0.026
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: imgChamberTemp3
            width: parent.height*0.131
            height: imgChamberTemp3.width
            color: serialConfig.getChamber3TempColor()
            anchors.left: imgPyroA3.right
            anchors.top: imgPyroA3.bottom
            anchors.leftMargin: parent.height*0.065
            anchors.topMargin: parent.height*-0.044

            Text {
                id: txtTempChamber3
                text: serialConfig.getChamber3TempValue()
                anchors.fill: parent
                font.pixelSize: parent.height*0.367
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: imgChamberTemp4
            width: parent.height*0.131
            height: imgChamberTemp4.width
            color: serialConfig.getChamber4TempColor()
            anchors.verticalCenter: imgChamberTemp3.verticalCenter
            anchors.left: imgChamberTemp3.right
            anchors.leftMargin: parent.height*0.078

            Text {
                id: txtTempChamber4
                text: serialConfig.getChamber4TempValue()
                anchors.fill: parent
                font.pixelSize: parent.height*0.367
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Text {
            id: txtPyroA4
            x: 425
            text: qsTr("A4")
            anchors.verticalCenter: imgPyroA4.verticalCenter
            anchors.right: imgPyroA4.left
            anchors.rightMargin: parent.height*0.026
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: txtBPMainParachutte
            text: qsTr("BP")
            anchors.top: imgPyroA2.bottom
            anchors.topMargin: parent.height*0.091
            font.pixelSize: parent.height*0.057
            anchors.horizontalCenter: txtCO2MainParachutte.horizontalCenter
        }

        Rectangle {
            id: imgPyroB1
            width: parent.height*0.065
            height: imgPyroB1.width
            color: serialConfig.getPyroB1Color();
            radius: imgPyroB1.width/2
            anchors.verticalCenter: txtPyroB1.verticalCenter
            anchors.left: txtPyroB1.right
            anchors.leftMargin: parent.height*0.026
        }

        Text {
            id: txtPyroB1
            text: qsTr("B1")
            anchors.left: txtBPMainParachutte.right
            anchors.top: txtBPMainParachutte.bottom
            anchors.leftMargin: parent.height*-0.326
            anchors.topMargin: parent.height*0.052
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: imgPyroB2
            width: parent.height*0.065
            height: imgPyroB2.width
            color: serialConfig.getPyroB2Color();
            radius: imgPyroB2.width/2
            anchors.verticalCenter: txtPyroB2.verticalCenter
            anchors.left: txtPyroB2.right
            anchors.leftMargin: parent.height*0.026
        }

        Text {
            id: txtPyroB2
            text: qsTr("B2")
            anchors.verticalCenter: imgPyroB1.verticalCenter
            anchors.left: imgPyroB1.right
            anchors.leftMargin: parent.height*0.052
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: imgPyroA5
            width: parent.height*0.065
            height: imgPyroA5.width
            color: serialConfig.getPyroA5Color();
            radius: imgPyroA5.width/2
            anchors.verticalCenter: txtPyroA5.verticalCenter
            anchors.left: txtPyroA5.right
            anchors.leftMargin: parent.height*0.026
        }

        Text {
            id: txtPyroA5
            text: qsTr("A5")
            anchors.verticalCenter: imgPyroB2.verticalCenter
            anchors.left: imgPyroB2.right
            anchors.leftMargin: parent.height*0.052
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: txtBPDrogueParachutte
            text: qsTr("BP")
            anchors.top: imgPyroA4.bottom
            anchors.topMargin: parent.height*0.091
            font.pixelSize: parent.height*0.057
            anchors.horizontalCenter: txtCO2DrogueParachutte.horizontalCenter
        }

        Rectangle {
            id: imgPyroB3
            width: parent.height*0.065
            height: imgPyroB3.width
            color:  serialConfig.getPyroB3Color();
            radius: imgPyroB3.width/2
            anchors.verticalCenter: txtPyroB3.verticalCenter
            anchors.left: txtPyroB3.right
            anchors.leftMargin: parent.height*0.026
        }

        Text {
            id: txtPyroB3
            text: qsTr("B3")
            anchors.left: txtBPDrogueParachutte.right
            anchors.top: txtBPDrogueParachutte.bottom
            anchors.leftMargin: parent.height*-0.326
            anchors.topMargin: parent.height*0.052
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: imgPyroB4
            width: parent.height*0.065
            height: imgPyroB4.width
            color: serialConfig.getPyroB4Color();
            radius: imgPyroB4.width/2
            anchors.verticalCenter: txtPyroB4.verticalCenter
            anchors.left: txtPyroB4.right
            anchors.leftMargin: parent.height*0.026
        }

        Text {
            id: txtPyroB4
            text: qsTr("B4")
            anchors.verticalCenter: imgPyroB3.verticalCenter
            anchors.left: imgPyroB3.right
            anchors.leftMargin: parent.height*0.052
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: imgPyroB5
            width: parent.height*0.065
            height: imgPyroB5.width
            color: serialConfig.getPyroB5Color();
            radius: imgPyroB5.width/2
            anchors.verticalCenter: txtPyroB5.verticalCenter
            anchors.left: txtPyroB5.right
            anchors.leftMargin: parent.height*0.026
        }

        Text {
            id: txtPyroB5
            text: qsTr("B5")
            anchors.verticalCenter: imgPyroB3.verticalCenter
            anchors.left: imgPyroB4.right
            anchors.leftMargin: parent.height*0.052
            font.pixelSize: parent.height*0.047
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: txtCurrentAltitude
            text: qsTr("Current altitude:")
            anchors.top: imgPyroB1.bottom
            anchors.topMargin: parent.height*0.065
            font.pixelSize: parent.height*0.063
            anchors.horizontalCenterOffset: parent.height*-0.117
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtAltitude
            text: serialConfig.getLastCurrentAltValue()
            anchors.verticalCenter: txtCurrentAltitude.verticalCenter
            anchors.left: txtCurrentAltitude.right
            anchors.leftMargin: parent.height*0.039
            font.pixelSize: parent.height*0.063
        }

        Text {
            id: txtChamber1
            text: qsTr("Chamber 1")
            anchors.top: imgChamberTemp1.bottom
            anchors.topMargin: parent.height * 0.026
            font.pixelSize: parent.height * 0.026
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: imgChamberTemp1.horizontalCenter
        }

        Text {
            id: txtChamber2
            text: qsTr("Chamber 1")
            anchors.top: imgChamberTemp2.bottom
            anchors.topMargin: parent.height * 0.026
            font.pixelSize: parent.height * 0.026
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: imgChamberTemp2.horizontalCenter
        }

        Text {
            id: txtChamber3
            text: qsTr("Chamber 3")
            anchors.top: imgChamberTemp3.bottom
            anchors.topMargin: parent.height * 0.026
            font.pixelSize: parent.height * 0.026
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: imgChamberTemp3.horizontalCenter
        }

        Text {
            id: txtChamber4
            text: qsTr("Chamber 4")
            anchors.top: imgChamberTemp4.bottom
            anchors.topMargin: parent.height * 0.026
            font.pixelSize: parent.height * 0.026
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: imgChamberTemp4.horizontalCenter
        }
    }
}
