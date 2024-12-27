import QtQuick 2.0
import QtQuick.Controls
import QtQuick.VirtualKeyboard
Item {

    // ------------------- Backend  -------------------
    Rectangle{
        width: parent.width
        height: parent.height
        color:  constants.mainBackgroundColor()

        // ------------------- App Tittle -------------------
        Text {
            id: txt_app_tittle
            x: parent.width/2 - txt_app_tittle.width/2
            text: qsTr(constants.appName())
            anchors.top: parent.top
            anchors.topMargin: 15
            font.pixelSize: parent.height*0.065
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        // ------------------- Lateral menu -------------------

        Rectangle {
            id: lateral_menu
            width: lateral_menu.height *0.10
            color: "#27c235"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.topMargin: 40
            anchors.bottomMargin: 40

            Button {
                id: btn_go_motion_information_screen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 1")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()

                background: Rectangle {
                        color: "transparent" // Transparent background
                        border.color: "transparent" // Optional: make the border invisible
                    }
                onClicked: loader.source = "MotionInformationScreen.qml"
            }

            Button {
                id: btn_go_gps_information_screen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 2")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btn_go_motion_information_screen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: loader.source = "GpsInformationScreen.qml"
            }

            Button {
                id: btn_go_eyection_information_screen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 3")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btn_go_gps_information_screen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: loader.source = "EyectionInformationScreen.qml"

            }

            Button {
                id: btn_go_communication_information_screen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 4")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btn_go_eyection_information_screen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: loader.source = "ComunicationInformationScreen.qml"

            }

            Button {
                id: btn_go_general_information_screen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                text: qsTr("Button 5")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btn_go_communication_information_screen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: loader.source = "GeneralInformationScreen.qml"
            }
        }

        //------------------- Loader ------------------

        Loader {
            id: loader
            anchors.left: lateral_menu.right
            anchors.right: parent.right
            anchors.top: txt_app_tittle.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.rightMargin: 40
            anchors.topMargin: 10
            anchors.bottomMargin: 40

            source: "MotionInformationScreen.qml"
        }

        // ------------------- Info 1 Section -------------------
        Rectangle {
            id: info1_section
            width: parent.height*0.1
            color: "#000000"
            radius: 23
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: -info1_section.width/2
            anchors.topMargin: 65
            anchors.bottomMargin: 65

            property real collapsedWidth: parent.height*0.1
            property real expandedWidth: window.height
            property bool isExpanded: false

            // Smooth width animation
            Behavior on width {
                NumberAnimation {
                    duration: 300
                    easing.type: Easing.InOutQuad
                }
            }

            // Content inside the section
            Loader {
                id: dynamicLoader1
                height: parent.height
                source: "" // Initially empty
                anchors.right: parent.right
                anchors.rightMargin: parent.width/2
                anchors.left: btnShowInfo1.right
            }

            // Toggle Button
            Rectangle {
                id: btnShowInfo1
                x: 0
                width: window.height*0.05
                height: parent.height
                color: "gray"
                radius: 15
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.topMargin: 0

                Text {
                    anchors.centerIn: parent
                    text: info1_section.isExpanded ? "−" : "+" // Change symbol
                    color: "white"
                    font.pixelSize: 24
                }

                MouseArea {
                   anchors.fill: parent
                   onClicked: {
                       info1_section.isExpanded = !info1_section.isExpanded;
                       info1_section.width = info1_section.isExpanded ? info1_section.expandedWidth : info1_section.collapsedWidth;

                       if (info1_section.isExpanded) {
                           dynamicLoader1.source = "TestScreen.qml";
                       } else {
                           dynamicLoader1.source = ""; // Unload content to save memory
                       }
                   }
               }
            }
        }

        // ------------------- Info 2 Section -------------------
        Rectangle {
            id: info2_section
            x: parent.width/2 - info2_section.width/2
            height: parent.height*0.1
            color: "#000000"
            radius: 15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width*0.15
            anchors.rightMargin: parent.width*0.15
            anchors.bottomMargin: -info2_section.height/2

            property real collapsedHeight: parent.height*0.1
            property real expandedHeight: info2_section.width*0.3
            property bool isExpanded: false

            // Smooth height animation
            Behavior on height {
                NumberAnimation {
                    duration: 300
                    easing.type: Easing.InOutQuad
                }
            }

            // Content inside the section
            Loader {
                id: dynamicLoader
                width: parent.width
                source: "" // Initially empty
                anchors.top: btnShowInfo2.bottom
                anchors.bottom: parent.bottom
                anchors.bottomMargin: parent.height/2
            }

            // Toggle Button
            Rectangle {
                id: btnShowInfo2
                x: 0
                width: parent.width
                height: window.height*0.05
                color: "gray"
                radius: 15
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.topMargin: 0

                Text {
                    anchors.centerIn: parent
                    text: info2_section.isExpanded ? "−" : "+" // Change symbol
                    color: "white"
                    font.pixelSize: 24
                }

                MouseArea {
                   anchors.fill: parent
                   onClicked: {
                       info2_section.isExpanded = !info2_section.isExpanded;
                       info2_section.height = info2_section.isExpanded ? info2_section.expandedHeight : info2_section.collapsedHeight;

                       if (info2_section.isExpanded) {
                           dynamicLoader.source = "TestScreen.qml";
                       } else {
                           dynamicLoader.source = ""; // Unload content to save memory
                       }
                   }
               }
            }
        }
    }
}
