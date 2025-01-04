import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: constants.mainBackgroundColor()


        Text {
            text: qsTr("Soon")
            anchors.fill: parent
            font.pixelSize: 72
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.italic: true
        }
    }
}
