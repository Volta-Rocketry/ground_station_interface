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
            id: txtAppTittle
            x: parent.width/2 - txtAppTittle.width/2
            text: qsTr(constants.appName())
            anchors.top: parent.top
            anchors.topMargin: 15
            font.pixelSize: parent.height*0.065
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        // ------------------- Lateral menu -------------------

        Rectangle {
            id: lateralMenu
            width: lateralMenu.height *0.10
            color: constants.mainColor()
            radius: parent.height*0.042
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.topMargin: 40
            anchors.bottomMargin: 40

            Button {
                id: btnGoMotionInformationScreen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: {
                    loader.source = "MotionInformationScreen.qml"
                    btnBackgroundGoMotionInformationScreen.color = constants.alternativeColor()
                    btnBackgroundGoGpsInformationScreen.color = "transparent"
                    btnBackgroundGoEyectionInformationScreen.color = "transparent"
                    btnBackgroundGoCommunicationInformationScreen.color = "transparent"
                    btnBackgroundGoGeneralGnformationScreen.color = "transparent"
                }

                background: Rectangle{
                    id: btnBackgroundGoMotionInformationScreen
                    color: constants.alternativeColor()
                    radius: parent.height/2
                }

                Image {
                    id: imageMotion
                    width: parent.width
                    height: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "assets/images/motion_logo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: btnGoGpsInformationScreen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btnGoMotionInformationScreen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: {
                    loader.source = "GpsInformationScreen.qml"
                    btnBackgroundGoMotionInformationScreen.color = "transparent"
                    btnBackgroundGoGpsInformationScreen.color = constants.alternativeColor()
                    btnBackgroundGoEyectionInformationScreen.color = "transparent"
                    btnBackgroundGoCommunicationInformationScreen.color = "transparent"
                    btnBackgroundGoGeneralGnformationScreen.color = "transparent"
                }

                background: Rectangle{
                    id: btnBackgroundGoGpsInformationScreen
                    color: "transparent"
                    radius: parent.height/2
                }

                Image {
                    id: imageGps
                    width: parent.width
                    height: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "assets/images/gps_logo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: btnGoEyectionInformationScreen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btnGoGpsInformationScreen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: {
                    loader.source = "EyectionInformationScreen.qml"
                    btnBackgroundGoMotionInformationScreen.color = "transparent"
                    btnBackgroundGoGpsInformationScreen.color = "transparent"
                    btnBackgroundGoEyectionInformationScreen.color =  constants.alternativeColor()
                    btnBackgroundGoCommunicationInformationScreen.color = "transparent"
                    btnBackgroundGoGeneralGnformationScreen.color = "transparent"
                }

                background: Rectangle{
                    id: btnBackgroundGoEyectionInformationScreen
                    color: "transparent"
                    radius: parent.height/2
                }

                Image {
                    id: imageEyection
                    width: parent.width
                    height: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "assets/images/eyection_logo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: btnGoCommunicationInformationScreen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btnGoEyectionInformationScreen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: {
                    loader.source = "ComunicationInformationScreen.qml"
                    btnBackgroundGoMotionInformationScreen.color = "transparent"
                    btnBackgroundGoGpsInformationScreen.color = "transparent"
                    btnBackgroundGoEyectionInformationScreen.color = "transparent"
                    btnBackgroundGoCommunicationInformationScreen.color = constants.alternativeColor()
                    btnBackgroundGoGeneralGnformationScreen.color = "transparent"
                }

                background: Rectangle{
                    id: btnBackgroundGoCommunicationInformationScreen
                    color: "transparent"
                    radius: parent.height/2
                }

                Image {
                    id: imageComunication
                    width: parent.width
                    height: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "assets/images/coms_logo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Button {
                id: btnGoGeneralGnformationScreen
                height: (parent.height -(constants.buttonLateralSpacing()*6))/5
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: btnGoCommunicationInformationScreen.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: constants.buttonLateralSpacing()
                onClicked: {
                    loader.source = "Info1Screen.qml"
                    btnBackgroundGoMotionInformationScreen.color = "transparent"
                    btnBackgroundGoGpsInformationScreen.color = "transparent"
                    btnBackgroundGoEyectionInformationScreen.color = "transparent"
                    btnBackgroundGoCommunicationInformationScreen.color = "transparent"
                    btnBackgroundGoGeneralGnformationScreen.color = constants.alternativeColor()
                }

                background: Rectangle{
                    id: btnBackgroundGoGeneralGnformationScreen
                    color: "transparent"
                    radius: parent.height/2
                }

                Image {
                    id: imageInformation
                    width: parent.width
                    height: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "assets/images/info_logo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        //------------------- Loader ------------------

        Loader {
            id: loader
            anchors.left: lateralMenu.right
            anchors.right: parent.right
            anchors.top: txtAppTittle.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 10
            anchors.rightMargin: 40
            anchors.topMargin: 10
            anchors.bottomMargin: 40

            source: "MotionInformationScreen.qml"
        }

        // ------------------- Info 1 Section -------------------
        Rectangle {
            id: info1Section
            width: parent.height*0.1
            color: constants.mainBackgroundColor()
            radius: 23
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.rightMargin: -info1Section.width/2
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
                color: constants.alternativeColor()
                radius: 15
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.topMargin: 0

                Text {
                    anchors.centerIn: parent
                    text: info1Section.isExpanded ? "−" : "+" // Change symbol
                    color: "white"
                    font.pixelSize: 24
                }

                MouseArea {
                   anchors.fill: parent
                   onClicked: {
                       info1Section.isExpanded = !info1Section.isExpanded;
                       info1Section.width = info1Section.isExpanded ? info1Section.expandedWidth : info1Section.collapsedWidth;

                       if (info1Section.isExpanded) {
                           dynamicLoader1.source = "Info1Screen.qml";
                       } else {
                           dynamicLoader1.source = ""; // Unload content to save memory
                       }
                   }
               }
            }
        }

        // ------------------- Info 2 Section -------------------
        Rectangle {
            id: info2Section
            x: parent.width/2 - info2Section.width/2
            height: parent.height*0.1
            color: constants.mainBackgroundColor()
            radius: 15
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: parent.width*0.15
            anchors.rightMargin: parent.width*0.15
            anchors.bottomMargin: -info2Section.height/2

            property real collapsedHeight: parent.height*0.1
            property real expandedHeight: info2Section.width*0.3
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
                color: constants.alternativeColor()
                radius: 15
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.topMargin: 0

                Text {
                    anchors.centerIn: parent
                    text: info2Section.isExpanded ? "−" : "+" // Change symbol
                    color: "white"
                    font.pixelSize: 24
                }

                MouseArea {
                   anchors.fill: parent
                   onClicked: {
                       info2Section.isExpanded = !info2Section.isExpanded;
                       info2Section.height = info2Section.isExpanded ? info2Section.expandedHeight : info2Section.collapsedHeight;

                       if (info2Section.isExpanded) {
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
