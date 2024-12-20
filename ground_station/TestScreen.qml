import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: "red"

        Text {
            anchors.centerIn: parent
            text: "This is text screen AAAAA"
        }
    }

    Rectangle{
        height: parent.height
        width: 20
        color: "green"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }

    Rectangle{
        height: 20
        width: parent.width
        color: "blue"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }
}
