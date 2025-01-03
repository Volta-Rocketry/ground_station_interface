import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Connections{
        target: serialConfig
        function onUpdateInfo2Screen(){
            console.log("Entro")
            txtValueTimeCore.text = serialConfig.getCoreLastUpdatedTime()
            txtValueTimeGps.text = serialConfig.getGpsLastUpdatedTime()
            txtValueTimePyro.text = serialConfig.getPyroLastUpdatedTime()
            txtValueTimeChamber.text = serialConfig.getChamberLastUpdatedTime()

            txtValueSecondsCore.text = serialConfig.getCoreLastUpdatedSeconds()
            txtValueSecondsGps.text = serialConfig.getGpsLastUpdatedSeconds()
            txtValueSecondsPyro.text = serialConfig.getPyroLastUpdatedSeconds()
            txtValueSecondsChamber.text = serialConfig.getChamberLastUpdatedSeconds()

            txtValueActualTime.text = serialConfig.getCurrentTimeMSmString(2)
        }
    }

    Rectangle {
        id: rectangle
        color: "transparent"
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        Text {
            id: txtTittleCorePacket
            text: qsTr("Last Core Packet Received:")
            anchors.top: parent.top
            anchors.topMargin: parent.height*0.1
            font.pixelSize: parent.height * 0.12
            anchors.horizontalCenterOffset: parent.height*-1.3
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtTittleGpsPacket
            text: qsTr("Last GPS Packet Received:")
            anchors.top: txtTittleCorePacket.bottom
            anchors.topMargin: parent.height * 0.05
            anchors.horizontalCenter: txtTittleCorePacket.horizontalCenter
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtTittlePyroPacket
            text: qsTr("Last Pyro Packet Received:")
            anchors.top: txtTittleGpsPacket.bottom
            anchors.topMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
            anchors.horizontalCenter: txtTittleGpsPacket.horizontalCenter
        }

        Text {
            id: txtTittleChamberPacket
            text: qsTr("Last Chamber Packet Received:")
            anchors.top: txtTittlePyroPacket.bottom
            anchors.topMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
            anchors.horizontalCenter: txtTittlePyroPacket.horizontalCenter
        }

        Text {
            id: txtValueTimeCore
            text: serialConfig.getCoreLastUpdatedTime()
            anchors.verticalCenter: txtTittleCorePacket.verticalCenter
            anchors.left: txtTittleCorePacket.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtCommaCore
            text: qsTr(",")
            anchors.verticalCenter: txtValueTimeCore.verticalCenter
            anchors.left: txtValueTimeCore.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtValueSecondsCore
            text: serialConfig.getCoreLastUpdatedSeconds()
            anchors.verticalCenter: txtCommaCore.verticalCenter
            anchors.left: txtCommaCore.right
            anchors.leftMargin: parent.height * 0.02
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtTittleSecondsAgoCore
            text: qsTr("seconds ago")
            anchors.verticalCenter: txtValueSecondsCore.verticalCenter
            anchors.left: txtValueSecondsCore.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtValueTimeGps
            text: serialConfig.getGpsLastUpdatedTime()
            anchors.verticalCenter: txtTittleGpsPacket.verticalCenter
            anchors.left: txtTittleGpsPacket.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtValueSecondsGps
            text: serialConfig.getGpsLastUpdatedSeconds()
            anchors.verticalCenter: txtCommaGps.verticalCenter
            anchors.left: txtCommaGps.right
            anchors.leftMargin: parent.height * 0.02
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtTittleSecondsAgoGps
            text: qsTr("seconds ago")
            anchors.verticalCenter: txtValueSecondsGps.verticalCenter
            anchors.left: txtValueSecondsGps.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtCommaGps
            text: qsTr(",")
            anchors.verticalCenter: txtValueTimeGps.verticalCenter
            anchors.left: txtValueTimeGps.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtValueTimePyro
            text: serialConfig.getPyroLastUpdatedTime()
            anchors.verticalCenter: txtTittlePyroPacket.verticalCenter
            anchors.left: txtTittlePyroPacket.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtValueSecondsPyro
            text: serialConfig.getPyroLastUpdatedSeconds()
            anchors.verticalCenter: txtCommaPyro.verticalCenter
            anchors.left: txtCommaPyro.right
            anchors.leftMargin: parent.height * 0.02
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtTittleSecondsAgoPyro
            text: qsTr("seconds ago")
            anchors.verticalCenter: txtValueSecondsPyro.verticalCenter
            anchors.left: txtValueSecondsPyro.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtCommaPyro
            text: qsTr(",")
            anchors.verticalCenter: txtValueTimePyro.verticalCenter
            anchors.left: txtValueTimePyro.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtValueTimeChamber
            text: serialConfig.getChamberLastUpdatedTime()
            anchors.verticalCenter: txtTittleChamberPacket.verticalCenter
            anchors.left: txtTittleChamberPacket.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtValueSecondsChamber
            text: serialConfig.getChamberLastUpdatedSeconds()
            anchors.verticalCenter: txtCommaChamber.verticalCenter
            anchors.left: txtCommaChamber.right
            anchors.leftMargin: parent.height * 0.02
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtTittleSecondsAgoChamber
            text: qsTr("seconds ago")
            anchors.verticalCenter: txtValueSecondsChamber.verticalCenter
            anchors.left: txtValueSecondsChamber.right
            anchors.leftMargin: parent.height * 0.05
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtCommaChamber
            text: qsTr(",")
            anchors.verticalCenter: txtValueTimeChamber.verticalCenter
            anchors.left: txtValueTimeChamber.right
            anchors.leftMargin: 0
            font.pixelSize: parent.height * 0.12
        }

        Text {
            id: txtTittleCorrupted
            text: qsTr("Corrupted")
            anchors.top: txtValueActualTime.bottom
            anchors.topMargin: parent.height*0.05
            font.pixelSize: parent.height*0.12
            anchors.horizontalCenter: txtValueActualTime.horizontalCenter
        }

        Text {
            id: txtValueActualTime
            text: serialConfig.getCurrentTimeMSmString(2)
            anchors.top: parent.top
            anchors.topMargin: parent.height*0.05
            font.pixelSize: parent.height * 0.18
            anchors.horizontalCenterOffset: parent.height*1.6
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtTittleCorruptedCore
            text: qsTr("Core")
            anchors.top: txtTittleCorrupted.bottom
            anchors.topMargin: parent.height*0.05
            font.pixelSize: parent.height*0.1
            anchors.horizontalCenterOffset: parent.height*-0.35
            anchors.horizontalCenter: txtTittleCorrupted.horizontalCenter
        }

        Text {
            id: txtValueCorruptedCore
            text: qsTr("XXX")
            anchors.verticalCenter: txtTittleCorruptedCore.verticalCenter
            anchors.left: txtTittleCorruptedCore.right
            anchors.leftMargin: parent.height*0.05
            font.pixelSize: parent.height*0.1
        }

        Text {
            id: txtTittleCorruptedPyro
            text: qsTr("Pyro")
            anchors.verticalCenter: txtTittleCorruptedCore.verticalCenter
            anchors.left: txtValueCorruptedCore.right
            anchors.leftMargin: parent.height*0.1
            font.pixelSize: parent.height*0.1
        }

        Text {
            id: txtValueCorruptedPyro
            text: qsTr("XXX")
            anchors.verticalCenter: txtTittleCorruptedPyro.verticalCenter
            anchors.left: txtTittleCorruptedPyro.right
            anchors.leftMargin: parent.height*0.05
            font.pixelSize: parent.height*0.1
        }

        Text {
            id: txtTittleCorruptedGps
            text: qsTr("GPS")
            anchors.top: txtTittleCorruptedCore.bottom
            anchors.topMargin: parent.height*0.05
            font.pixelSize: parent.height*0.1
            anchors.horizontalCenter: txtTittleCorruptedCore.horizontalCenter
        }

        Text {
            id: txtValueCorruptedGps
            text: qsTr("XXX")
            anchors.verticalCenter: txtTittleCorruptedGps.verticalCenter
            anchors.left: txtTittleCorruptedGps.right
            anchors.leftMargin: parent.height*0.05
            font.pixelSize: parent.height*0.1
        }

        Text {
            id: txtTittleCorruptedChamber
            text: qsTr("Cham")
            anchors.verticalCenter: txtTittleCorruptedGps.verticalCenter
            anchors.left: txtValueCorruptedGps.right
            anchors.leftMargin: parent.height*0.1
            font.pixelSize: parent.height*0.1
        }

        Text {
            id: txtValueCorruptedChamber
            text: qsTr("XXX")
            anchors.verticalCenter: txtTittleCorruptedChamber.verticalCenter
            anchors.left: txtTittleCorruptedChamber.right
            anchors.leftMargin: parent.height*0.05
            font.pixelSize: parent.height*0.1
        }

    }
}
