

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
import Generated.QtQuick3D.Final

Rectangle {
    id: display
    width: Constants.width
    height: Constants.height
    color: Constants.darkBackgroundColor

    property alias accelZDial: accelZDial
    property alias accelXDial: accelXDial
    property alias accelYDial: accelYDial
    property alias txtAccelZVal: txtAccelZVal
    property alias txtAccelYVal: txtAccelYVal
    property alias txtAccelXVal: txtAccelXVal
    property alias altitudeDial: altitudeDial
    property alias txtAltMVal: txtAltMVal
    property alias txtAltFtVal: txtAltFtVal
    property alias timerVal: timerVal
    property alias txtLatVal: txtLatVal
    property alias txtLonVal: txtLonVal
    property alias speedDial: speedDial
    property alias txtSpeedMVal: txtSpeedMVal
    property alias txtSpeedFtVal: txtSpeedFtVal
    property alias timeLineValue: timeLineValue
    property alias timeLineBackground: timeLineBackground
    property alias txtTittleAscent: txtTittleAscent
    property alias txtTittleApogee: txtTittleApogee
    property alias txtTittleMainChute: txtTittleMainChute
    property alias txtTittleTouchDown: txtTittleTouchDown
    property alias testImg: testImg
    property alias txtLog: txtLog
    property alias rectTelStat: rectTelStat
    property alias mediaDevices: mediaDevices
    property alias camera: camera
    property alias altitudeSeries: altitudeSeries
    property alias axisYGraphAltitude: axisYGraphAltitude
    property alias axisXGraphAltitude: axisXGraphAltitude
    property alias altitudeGraph: altitudeGraph
    property alias _final: _final

    property real dpi1: Screen.pixelDensity * 25.4
    property real dpi2: Screen.pixelDensity

    //property real dpi3: Screen.logicalDotsPerInch
    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "New Material"
        }
    }

    Rectangle {
        id: altitudeGraphSection
        width: display.width * 0.677
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.left: timelineSection.left
        anchors.top: timelineSection.bottom
        anchors.bottom: altitudeDialSection.top
        anchors.leftMargin: 0
        anchors.topMargin: display.height * 0.01574
        anchors.bottomMargin: display.height * 0.02037

        GraphsView {
            id: altitudeGraph
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleGraph.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 0

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

                // axisX.lineWidth: 2
                // axisY.lineWidth: 2
            }

            axisX: ValueAxis {
                id: axisXGraphAltitude
                visible: true
                titleVisible: true
                subGridVisible: false
                lineVisible: true
                labelsVisible: true
                //titleText: "Time (s)"
                titleColor: "white"

                //titleFont: Font { pixelSize: 16 }
            }

            axisY: ValueAxis {
                id: axisYGraphAltitude
                visible: true
                titleVisible: true
                subGridVisible: false
                lineVisible: true
                //titleText: "Altitude (m)"
                titleColor: "white"
            }

            LineSeries {
                id: altitudeSeries
                width: display.height * 0.0037
            }
        }

        Text {
            id: txtTittleGraph
            color: "#ffffff"
            text: qsTr("Altitude [m] vs Time [s]")
            anchors.top: parent.top
            font.pixelSize: display.height * 0.025
            anchors.horizontalCenter: parent.horizontalCenter
            font.family: "Nasalization"
        }
    }

    Rectangle {
        id: accelDialSection
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: 10
        anchors.left: altitudeDialSection.right
        anchors.top: altitudeDialSection.top
        anchors.leftMargin: (altitudeGraphSection.width - (altitudeDial.width * 4)) / 6
        anchors.topMargin: 0

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
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
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
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtAccelYVal
            color: "#008000"
            text: qsTr("00.00")
            anchors.top: txtAccelXVal.bottom
            anchors.topMargin: display.height * -0.004
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtAccelXVal
            color: "#ff0000"
            text: qsTr("00.00")
            anchors.top: txtAccelZVal.bottom
            anchors.topMargin: display.height * -0.004
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: altitudeDialSection
        y: 800
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.left: altitudeGraphSection.left
        anchors.bottom: flag_of_Colombia.top
        anchors.leftMargin: (altitudeGraphSection.width - (altitudeDial.width * 4)) / 6
        anchors.bottomMargin: display.height * 0.02037

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
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: display.height * -0.015
        }

        Text {
            id: txtTittleAlt
            color: "#ffffff"
            text: qsTr("Altitude")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.verticalCenterOffset: display.height * -0.02778
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
        }

        Text {
            id: txtAltMUnit
            color: "#ffffff"
            text: qsTr("m")
            anchors.verticalCenter: txtAltMVal.verticalCenter
            anchors.left: txtAltMVal.right
            anchors.leftMargin: display.height * 0.01042
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
        }

        Text {
            id: txtAltFtVal
            color: "#ffffff"
            text: qsTr("0000")
            anchors.top: txtAltMVal.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
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
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
        }
    }

    Rectangle {
        id: timesInformationSection
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.left: speedDialSection.right
        anchors.top: speedDialSection.top
        anchors.leftMargin: (altitudeGraphSection.width - (altitudeDial.width * 4)) / 6
        anchors.topMargin: 0

        Text {
            id: timerVal
            color: "#ffffff"
            text: qsTr("T: +00:00:00")
            anchors.top: parent.top
            anchors.topMargin: display.height * 0.01042
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
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
            anchors.topMargin: display.height * 0.00463 * 2.5
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLatVal
            color: "#ffffff"
            text: qsTr("000000000")
            anchors.top: txtTittleLat.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtTittleLon
            color: "#ffffff"
            text: qsTr("Longitude")
            anchors.top: txtLatVal.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
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
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: speedDialSection
        width: display.height * 0.20833
        height: display.height * 0.20833
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        border.width: 1
        anchors.left: accelDialSection.right
        anchors.top: accelDialSection.top
        anchors.leftMargin: (altitudeGraphSection.width - (altitudeDial.width * 4)) / 6
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
            color: "#ffffff"
            text: qsTr("Speed")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.verticalCenterOffset: display.height * -0.02778
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtSpeedMVal
            color: "#ffffff"
            text: qsTr("0000")
            anchors.top: txtTittleSpeed.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
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
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
        }

        Text {
            id: txtSpeedFtVal
            color: "#ffffff"
            text: qsTr("0000")
            anchors.top: txtSpeedMVal.bottom
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
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
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
        }
    }

    Rectangle {
        id: timelineSection
        height: display.height * 0.09583
        color: Constants.darkAreasColor
        radius: display.height * 0.02083
        anchors.left: parent.left
        anchors.right: altitudeGraphSection.right
        anchors.top: parent.top
        anchors.leftMargin: display.width * 0.016
        anchors.rightMargin: 0
        anchors.topMargin: display.height * 0.02083

        Rectangle {
            id: timeLineBackground
            y: 20
            height: display.height * 0.01852
            color: Constants.secondaryColor
            radius: timelineSection.height / 2
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
            radius: timelineSection.height / 2
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
            color: "#83ffffff"
            text: qsTr("Ascent")
            anchors.left: parent.left
            anchors.bottom: timeLineBackground.top
            anchors.leftMargin: display.width * 0.031
            anchors.bottomMargin: display.height * 0.01
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
        }

        Text {
            id: txtTittleApogee
            color: "#ffffff"
            text: qsTr("Apogee")
            anchors.verticalCenter: txtTittleAscent.verticalCenter
            anchors.left: txtTittleAscent.right
            anchors.leftMargin: display.width * 0.1
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: txtTittleMainChute
            color: "#ffffff"
            text: qsTr("Main Chute")
            anchors.verticalCenter: txtTittleApogee.verticalCenter
            anchors.left: txtTittleApogee.right
            anchors.leftMargin: display.width * 0.1
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: txtTittleTouchDown
            color: "#ffffff"
            text: qsTr("Touch Down")
            anchors.verticalCenter: txtTittleMainChute.verticalCenter
            anchors.left: txtTittleMainChute.right
            anchors.leftMargin: display.width * 0.10
            font.pixelSize: display.height * 0.025
            font.family: "Nasalization"
            anchors.verticalCenterOffset: 0
        }
    }

    Rectangle {
        id: d3ViewSection
        radius: display.height * 0.02083
        anchors.left: altitudeGraphSection.right
        anchors.right: parent.right
        anchors.top: altitudeGraphSection.top
        anchors.bottom: altitudeGraphSection.bottom
        anchors.leftMargin: 17
        anchors.rightMargin: 22
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        visible: true
        color: "#2e2d2d"

        View3D {
            id: euler_angles
            //anchors.left: speedometer.horizontalCenter
            anchors.fill: parent
            anchors.leftMargin: display.height * 0.00463
            anchors.rightMargin: display.height * 0.00463
            anchors.topMargin: display.height * 0.00463
            anchors.bottomMargin: display.height * 0.00463
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
                y: 0
                clipNear: 10
                horizontalMagnification: 0.75
                clipFar: 800
                scale.z: display.height * 0.00046
                scale.y: display.height * 0.00046
                scale.x: display.height * 0.00046
                z: 372.98022
            }

            Test {
                id: testImg
                scale.z: display.height * 0.02778
                scale.y: display.height * 0.01852
                scale.x: display.height * 0.01852
                eulerRotation.z: 0
                eulerRotation.y: 90
                eulerRotation.x: -90
                visible: false
            }

            Final {
                id: _final
                x: -30
                y: -30.902
                pivot.x: 1
                scale.z: display.height * 0.00139
                scale.y: display.height * 0.00139
                scale.x: display.height * 0.00139
                eulerRotation.z: 0
                eulerRotation.y: 0
                eulerRotation.x: -90
                z: 0.00001
            }
        }
    }

    Rectangle {
        id: conectionInfoSection
        width: display.width * 0.104
        color: "#2e2d2d"
        radius: display.height * 0.02083
        anchors.left: timelineSection.right
        anchors.top: timelineSection.top
        anchors.bottom: timelineSection.bottom
        anchors.leftMargin: 17
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        Text {
            id: _text
            color: "#ffffff"
            text: qsTr("Telemetry")
            anchors.top: parent.top
            anchors.topMargin: display.height * 0.01
            font.pixelSize: display.height * 0.025
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Nasalization"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: rectTelStat
            width: display.height * 0.031
            height: display.height * 0.031
            color: "#ff0000"
            radius: rectTelStat.width / 2
            anchors.top: _text.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Image {
        id: flag_of_Colombia
        y: 450
        height: display.height * 0.02037
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: display.width * 0.016
        anchors.rightMargin: display.width * 0.016
        anchors.bottomMargin: display.height * 0.02037
        source: "images/Flag_of_Colombia.png"
        fillMode: Image.Stretch
    }

    Image {
        id: whiteLogo_Safecrop
        anchors.top: parent.top
        anchors.right: d3ViewSection.right
        anchors.topMargin: display.height * 0.01574
        anchors.rightMargin: 0

        height: display.height * 0.10648
        fillMode: Image.PreserveAspectFit
        source: "images/WhiteLogo_Safecrop.PNG"
    }

    Rectangle {
        id: cameraSection
        color: "#2e2d2d"
        anchors.left: d3ViewSection.left
        anchors.right: d3ViewSection.right
        anchors.top: speedDialSection.top
        anchors.bottom: speedDialSection.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        MediaDevices {
            id: mediaDevices
        }

        CaptureSession {
            id: captureSession
            camera: camera
            videoOutput: videoOutput
        }

        Camera {
            id: camera
            //cameraDevice: mediaDevices.defaultVideoInput
            //"HD User Facing"//
            //mediaDevices.videoInputs.length > 1
            //? mediaDevices.videoInputs[1]  // Cambia el índice según la cámara deseada
            //: mediaDevices.defaultVideoInput
            // onActiveChanged: console.log("Cámara activa:", active)
        }

        VideoOutput {
            id: videoOutput
            anchors.fill: parent
            fillMode: VideoOutput.Stretch
            focus: visible
        }

        Text {
            id: txtLog
            y: 195
            color: "white"
            text: qsTr("LOG: XX,XX,XX,XX,XX,XX, Tsecs: 0000")
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            font.pixelSize: display.height * 0.01481

        }
    }
}

/*##^##
Designer {
    D{i:0;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:61;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:65;invisible:true}
}
##^##*/

