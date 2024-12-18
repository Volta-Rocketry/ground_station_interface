import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: "green"

        Text {
            anchors.centerIn: parent
            text: "This is Screen 1"
        }
    }
}
