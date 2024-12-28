import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: constants.mainBackgroundColor()

        Rectangle {
            id: grahp1
            width: parent.height*0.67
            height: grahp1.width
            color: "#000000"
            anchors.top: parent.top
            anchors.topMargin: parent.height*0.094
            anchors.horizontalCenterOffset: parent.height*-0.405
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: graph2
            width: parent.height*0.67
            height: graph2.width
            color: "#000000"
            anchors.verticalCenter: grahp1.verticalCenter
            anchors.left: grahp1.right
            anchors.leftMargin: parent.height*0.134
        }

        Text {
            id: txtLatitude
            text: qsTr("Latitude")
            anchors.top: txtLatitudeVal.bottom
            anchors.topMargin: 3
            font.pixelSize: parent.height*0.043
            anchors.horizontalCenter: txtLatitudeVal.horizontalCenter
        }

        Text {
            id: txtLongitudeVal
            text: qsTr("00000000")
            anchors.verticalCenter: txtLatitudeVal.verticalCenter
            anchors.left: txtLatitudeVal.right
            anchors.leftMargin: parent.height*0.054
            font.pixelSize: parent.height*0.07
        }

        Text {
            id: txtLatitudeVal
            text: qsTr("00000000")
            anchors.top: grahp1.bottom
            anchors.topMargin: parent.height*0.04
            font.pixelSize: parent.height*0.07
            anchors.horizontalCenterOffset: parent.height*-0.188
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLongitude
            text: qsTr("Longitude")
            anchors.top: txtLongitudeVal.bottom
            anchors.topMargin: parent.height*0.008
            font.pixelSize: parent.height*0.043
            anchors.horizontalCenter: txtLongitudeVal.horizontalCenter
        }
    }
}
