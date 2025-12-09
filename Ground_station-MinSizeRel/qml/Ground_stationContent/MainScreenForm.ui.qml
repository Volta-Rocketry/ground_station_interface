

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick3D 6.8
import Ground_station
import Generated.QtQuick3D.Missile5
import QtGraphs
import Generated.QtQuick3D.Test
import QtMultimedia

Rectangle {
    id: display
    width: Constants.width
    height:Constants.height
    color: Constants.darkBackgroundColor
    property alias rectangle45Width: rectangle45.width

    property color txtColor: Constants.darkTextColor

    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "New Material"
        }
    }

    Rectangle {
        id: altitudeGraphSection
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.left: timelineSection.left
        anchors.right: altitudeDialSection.left
        anchors.top: timelineSection.bottom
        anchors.bottom: speedDialSection.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: display.width * 0.008
        anchors.topMargin: display.height * 0.01
        anchors.bottomMargin: 0

        GraphsView {
            id: altitudeGraph
            anchors.fill: parent

            theme: GraphsTheme {
                backgroundVisible: false

                grid.mainColor: "transparent"
                gridVisible: false
                axisY.mainColor: "white" //"#000000" //constants.graphsGridMainColor()
                axisX.mainColor: "white" //"#000000" //constants.graphsGridMainColor()

                axisX.labelTextColor: "white" //"#000000" //constants.graphsTextMainColor()
                axisY.labelTextColor: "white" //"#000000" //constants.graphsTextMainColor()

                plotAreaBackgroundColor: "transparent"
                plotAreaBackgroundVisible: false

                seriesColors: ["red", "blue", "green"]
            }

            axisX: ValueAxis {
                id: axisXGraphAltitude
                visible: true
                titleVisible: true
                subGridVisible: false
                lineVisible: true
                labelsVisible: true
                titleText: "Time (s)"
                titleColor: "white"
            }

            axisY: ValueAxis {
                id: axisYGraphAltitude
                visible: true
                titleVisible: true
                subGridVisible: false
                lineVisible: true
                titleText: "Altitude (m)"
                titleColor: "white"
            }

            LineSeries {
                id: altitudeSeries
            }
        }
    }

    Rectangle {
        id: accelDialSection
        x: 523
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: 10
        anchors.right: parent.right
        anchors.top: conectionInfoSection.bottom
        anchors.rightMargin: display.width * 0.016
        anchors.topMargin: display.height * 0.01

        Dial {
            id: accelZDial
            value: 20
            to: 100
            anchors.fill: parent
            anchors.leftMargin: display.height * 0.01
            anchors.rightMargin: display.height * 0.01
            anchors.topMargin: display.height * 0.01
            anchors.bottomMargin: display.height * 0.01
            startAngle: -135
            palette.dark: "blue"
            handle: Rectangle {
                width: 0
                height: 0
                color: "transparent"
            }
        }

        Dial {
            id: accelXDial
            width: display.height * 0.156
            height: display.height * 0.156
            value: 35
            to: 100
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            palette.dark: "red"
            handle: Rectangle {
                width: 0
                height: 0
                color: "transparent"
            }
        }

        Dial {
            id: accelYDial
            width: display.height * 0.125
            height: display.height * 0.125
            value: 10
            anchors.verticalCenter: parent.verticalCenter
            to: 100
            anchors.horizontalCenter: parent.horizontalCenter
            palette.dark: "green"
            handle: Rectangle {
                width: 0
                height: 0
                color: "transparent"
            }
        }

        Rectangle {
            id: rectangle43
            x: display.height * 0.0625
            y: display.height * 0.104
            width: display.height * 0.04167
            height: display.height * 0.104
            color: parent.color
            rotation: 42
        }

        Rectangle {
            id: rectangle44
            x: display.height * 0.104
            y: display.height * 0.104
            width: display.height * 0.04167
            height: display.height * 0.104
            color: parent.color
            rotation: -42
        }

        Rectangle {
            id: rectangle45
            x: display.height * 0.0625
            y: display.height * 0.156
            width: display.height * 0.08333
            height: display.height * 0.052
            color: parent.color
        }

        Text {
            id: txtTittleAccel
            color: "#ffffff"
            text: qsTr("Accel")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: display.height*0.025
            font.bold: true
            anchors.verticalCenterOffset: display.width * -0.017
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtAccelZVal
            color: "#0000ff"
            text: qsTr("00.00")
            anchors.top: txtTittleAccel.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtAccelYVal
            color: "#008000"
            text: qsTr("00.00")
            anchors.top: txtAccelXVal.bottom
            anchors.topMargin: display.height * -0.004
            font.pixelSize: display.height*0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtAccelXVal
            color: "#ff0000"
            text: qsTr("00.00")
            anchors.top: txtAccelZVal.bottom
            anchors.topMargin: display.height * -0.004
            font.pixelSize: display.height*0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: altitudeDialSection
        x: 417
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.right: accelDialSection.left
        anchors.top: accelDialSection.top
        anchors.rightMargin: display.width * 0.008
        anchors.topMargin: 0

        Dial {
            id: altitudeDial
            value: 75
            anchors.fill: parent
            anchors.leftMargin: display.height * 0.01042
            anchors.rightMargin: display.height * 0.01042
            anchors.topMargin: display.height * 0.01042
            anchors.bottomMargin: display.height * 0.01042
            palette.dark: "white"
            handle: Rectangle {
                width: 0
                height: 0
                color: "#00000000"
            }
            to: 100
        }

        Rectangle {
            id: rectangle49
            x: display.height * 0.0625
            y: display.height * 0.104
            width: display.height * 0.04167
            height: display.height * 0.104
            color: parent.color
            rotation: 42
        }

        Rectangle {
            id: rectangle50
            x: display.height * 0.104
            y: display.height * 0.104
            width: display.height * 0.04167
            height: display.height * 0.104
            color: parent.color
            rotation: -42
        }

        Rectangle {
            id: rectangle51
            x: display.height * 0.0625
            y: display.height * 0.156
            width: display.height * 0.08333
            height: display.height * 0.052
            color: parent.color
        }

        Text {
            id: txtAltMVal
            color: "#ffffff"
            text: qsTr("0000")
            anchors.top: txtTittleAlt.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: display.height * -0.015
        }

        Text {
            id: txtTittleAlt
            x: 65
            y: 60
            color: "#ffffff"
            text: qsTr("Altitude")
            font.pixelSize: display.height*0.025
            font.bold: true
        }

        Text {
            id: txtAltMUnit
            color: "#ffffff"
            text: qsTr("m")
            anchors.verticalCenter: txtAltMVal.verticalCenter
            anchors.left: txtAltMVal.right
            anchors.leftMargin: display.height * 0.01042
            font.pixelSize: display.height*0.025
        }

        Text {
            id: txtAltFtVal
            color: "#ffffff"
            text: qsTr("0000")
            anchors.top: txtAltMVal.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: txtAltMVal.horizontalCenter
        }

        Text {
            id: txtAltFtUnit
            color: "#ffffff"
            text: qsTr("ft")
            anchors.verticalCenter: txtAltFtVal.verticalCenter
            anchors.left: txtAltFtVal.right
            anchors.leftMargin: display.height * 0.01042
            font.pixelSize: display.height*0.025
        }

    }

    Rectangle {
        id: timesInformationSection
        x: 523
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.right: accelDialSection.right
        anchors.top: accelDialSection.bottom
        anchors.rightMargin: 0
        anchors.topMargin: display.height * 0.01

        Text {
            id: timerVal
            color: "#ffffff"
            text: qsTr("T: +00:00:00")
            anchors.top: parent.top
            anchors.topMargin: display.height * 0.01042
            font.pixelSize: display.height*0.025
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: divider1
            height: display.height * 0.004
            color: "#ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: timerVal.bottom
            anchors.leftMargin: display.height * 0.01042
            anchors.rightMargin: display.height * 0.01042
            anchors.topMargin: display.height * 0.004
        }

        Text {
            id: txtTittleLat
            color: "#ffffff"
            text: qsTr("Latitude")
            anchors.top: divider1.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLatVal
            color: "#ffffff"
            text: qsTr("000000000")
            anchors.top: txtTittleLat.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtTittleLon
            color: "#ffffff"
            text: qsTr("Longitude")
            anchors.top: txtLatVal.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            font.bold: true
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLonVal
            color: "#ffffff"
            text: qsTr("000000000")
            anchors.top: txtTittleLon.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: speedDialSection
        x: 417
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        border.width: 1
        anchors.right: timesInformationSection.left
        anchors.top: timesInformationSection.top
        anchors.rightMargin: display.width * 0.008
        anchors.topMargin: 0

        Dial {
            id: speedDial
            value: 65
            anchors.fill: parent
            anchors.leftMargin: display.height * 0.01042
            anchors.rightMargin: display.height * 0.01042
            anchors.topMargin: display.height * 0.01042
            anchors.bottomMargin: display.height * 0.01042
            inputMode: Dial.Circular
            palette.dark: "white"
            to: 100
            handle: Rectangle {
                width: 0
                height: 0
                color: "transparent"
            }
        }

        Rectangle {
            id: rectangle46
            x: display.height * 0.0625
            y: display.height * 0.104
            width: display.height * 0.04167
            height: display.height * 0.104
            color: parent.color
            rotation: 42
        }

        Rectangle {
            id: rectangle47
            x: display.height * 0.104
            y: display.height * 0.104
            width: display.height * 0.04167
            height: display.height * 0.104
            color: parent.color
            rotation: -42
        }

        Rectangle {
            id: rectangle48
            x: display.height * 0.0625
            y: display.height * 0.156
            width: display.height * 0.08333
            height: display.height * 0.052
            color: parent.color
        }

        Text {
            id: txtTittleSpeed
            width: display.width*0.042
            height: display.width*0.025
            color: "#ffffff"
            text: qsTr("Speed")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: display.height*0.025
            font.bold: true
            anchors.verticalCenterOffset: -30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtSpeedMVal
            color: "#ffffff"
            text: qsTr("0000")
            anchors.top: txtTittleSpeed.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            anchors.horizontalCenterOffset: display.height * -0.021
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtSpeedMUnit
            color: "#ffffff"
            text: qsTr("m/s")
            anchors.verticalCenter: txtSpeedMVal.verticalCenter
            anchors.left: txtSpeedMVal.right
            anchors.leftMargin: display.height * 0.01042
            font.pixelSize: display.height*0.025
        }

        Text {
            id: txtSpeedFtVal
            color: "#ffffff"
            text: qsTr("0000")
            anchors.top: txtSpeedMVal.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height*0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: txtSpeedMVal.horizontalCenter
        }

        Text {
            id: txtSpeedFtUnit
            color: "#ffffff"
            text: qsTr("ft/s")
            anchors.verticalCenter: txtSpeedFtVal.verticalCenter
            anchors.left: txtSpeedFtVal.right
            anchors.leftMargin: display.height * 0.01042
            font.pixelSize: display.height*0.025
        }
    }

    Rectangle {
        id: timelineSection
        height: display.height * 0.09583
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.left: parent.left
        anchors.right: conectionInfoSection.left
        anchors.top: parent.top
        anchors.leftMargin: display.width * 0.016
        anchors.rightMargin: display.width * 0.008
        anchors.topMargin: display.height * 0.02083

        Rectangle {
            id: timeLineBackground
            y: 20
            height: display.height*0.01852
            color: Constants.secondaryColor
            radius: timelineSection.height/2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: display.width * 0.023
            anchors.rightMargin: display.width * 0.023
            anchors.bottomMargin: display.height * 0.02083
        }

        Rectangle {
            id: timeLineValue
            width: 200
            color: Constants.mainColor
            radius: timelineSection.height/2
            anchors.left: timeLineBackground.left
            anchors.top: timeLineBackground.top
            anchors.bottom: timeLineBackground.bottom
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0
        }

        Text {
            id: txtTittleAscent
            y: 3
            color: "#ffffff"
            text: qsTr("Ascent")
            anchors.left: parent.left
            anchors.bottom: timeLineBackground.top
            anchors.leftMargin: display.width * 0.031
            anchors.bottomMargin: display.height * 0.01
            font.pixelSize: display.height*0.025
        }

        Text {
            id: txtTittleApogee
            x: 600
            color: "#ffffff"
            text: qsTr("Apogee")
            anchors.verticalCenter: txtTittleAscent.verticalCenter
            font.pixelSize: display.height*0.025
        }

        Text {
            id: txtTittleMainChute
            x: 1000
            color: "#ffffff"
            text: qsTr("Main Chute")
            anchors.verticalCenter: txtTittleApogee.verticalCenter
            font.pixelSize: display.height*0.025
        }

        Text {
            id: txtTittleTouchDown
            x: 1400
            color: "#ffffff"
            text: qsTr("Touch Down")
            anchors.verticalCenter: txtTittleMainChute.verticalCenter
            font.pixelSize: display.height*0.025
        }
    }

    Rectangle {
        id: d3ViewSection
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.left: d3ViewSection1.right
        anchors.right: parent.right
        anchors.top: speedDialSection.bottom
        anchors.bottom: d3ViewSection1.bottom
        anchors.leftMargin: display.width * 0.008
        anchors.rightMargin: display.width * 0.008
        anchors.topMargin: display.height * 0.01
        anchors.bottomMargin: 0
        visible: false

        View3D {
            id: euler_angles
            anchors.left: speedometer.horizontalCenter
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            camera: orthographicCamera

            environment: SceneEnvironment {
                clearColor: Constants.darkAreasColor
                backgroundMode: SceneEnvironment.Color
            }


            /*Model {
           id: object
           position: Qt.vector3d(0, 0, 0)
           source: "#Cube" //""assets/images/test.glb"
           scale: Qt.vector3d(2, 1, 1)
           materials: [ DefaultMaterial {
                   diffuseColor: "red"
               }
           ]
       }*/
            DirectionalLight {
                x: 1.529
                y: -1.242
                z: -89.18201
                brightness: 0.87
                eulerRotation.z: -2.07888
                eulerRotation.x: -0.79765
                eulerRotation.y: -0.98224
            }


            /*
        Missile5 {
            id: missile5
            x: 0
            y: 0
            position: Qt.vector3d(0, 0, 0)
            z: 0
            eulerRotation.z: 0
            eulerRotation.y: 0
            pivot.x: 0
            pivot.y: 0
            eulerRotation.x: 0
            scale.z: 1
            scale.y: 1
            scale.x: 1
            pivot.z: 0
            scale: Qt.vector3d(2, 1, 1)
        }

    }*/
            OrthographicCamera {
                id: orthographicCamera
                x: -0
                y: -0
                clipNear: 10
                horizontalMagnification: 1
                clipFar: 200
                scale.z: 0.5
                scale.y: 0.5
                scale.x: 0.5
                z: 98.95863
            }

            Test {
                id: test
                eulerRotation.z: 0
                eulerRotation.y: 45
                eulerRotation.x: 45
                scale.z: 10
                scale.y: 10
                scale.x: 10
            }
        }
    }

    Rectangle {
        id: d3ViewSection1
        visible: true
        color: "#2e2d2d"
        radius: display.height * 0.02083
        border.color: "#2e2d2d"
        anchors.left: altitudeGraphSection.left
        anchors.right: altitudeGraphSection.right
        anchors.top: altitudeGraphSection.bottom
        anchors.bottom: flag_of_Colombia.top
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: display.height * 0.01
        anchors.bottomMargin: display.height * 0.01
    }

    Rectangle {
        id: conectionInfoSection
        color: "#2e2d2d"
        radius: display.height * 0.02083
        anchors.left: accelDialSection.left
        anchors.right: parent.right
        anchors.top: timelineSection.top
        anchors.bottom: timelineSection.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: display.width * 0.016
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        Text {
            id: _text
            color: "#ffffff"
            text: qsTr("Telemetry")
            anchors.top: parent.top
            anchors.topMargin: display.height*0.01
            font.pixelSize: display.height*0.025
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: rectangle19
            width: display.height * 0.031
            height: display.height * 0.031
            color: "#ff0000"
            radius: 15 / 2
            anchors.top: _text.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Image {
        id: flag_of_Colombia
        y: 450
        height: 22
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: display.width * 0.016
        anchors.rightMargin: display.width * 0.016
        anchors.bottomMargin: display.height * 0.01
        source: "images/Flag_of_Colombia.png"
        fillMode: Image.Stretch
    }
}

/*##^##
Designer {
    D{i:0;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:60;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:67}
}
##^##*/

