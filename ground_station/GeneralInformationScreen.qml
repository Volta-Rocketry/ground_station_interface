import QtQuick 2.0

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: "blue"

        Text {
            anchors.centerIn: parent
            text: "This is General Information Screen"
        }
    }
}
