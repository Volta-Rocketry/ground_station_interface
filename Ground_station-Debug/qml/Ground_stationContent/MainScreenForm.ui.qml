

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
    id: mainBackgound
    width: Constants.width
    height: Constants.height
    color: Constants.darkBackgroundColor

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
        x: 15
        y: 60
        width: 396
        height: 146
        color: Constants.darkAreasColor
        radius: 10

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

    Image {
        id: settings
        x: 592
        y: 11
        width: 40
        height: 40
        source: "images/settings_white.png"
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: accelDialSection
        x: 523
        y: 60
        width: 100
        height: 100
        color: Constants.darkAreasColor
        radius: 10

        Dial {
            id: dial
            value: 20
            to: 100
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
            startAngle: -135
            palette.dark: "blue"
            handle: Rectangle {
                width: 0
                height: 0
                color: "transparent"
            }
        }

        Dial {
            id: dial1
            width: 75
            height: 75
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
            id: dial2
            width: 60
            height: 60
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
            x: 29
            y: 49
            width: 20
            height: 50
            color: parent.color
            rotation: 42
        }

        Rectangle {
            id: rectangle44
            x: 51
            y: 50
            width: 20
            height: 50
            color: parent.color
            rotation: -42
        }

        Rectangle {
            id: rectangle45
            x: 30
            y: 75
            width: 40
            height: 25
            color: parent.color
        }

        Text {
            id: _text38
            color: mainBackgound.txtColor
            text: qsTr("Accel")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            anchors.verticalCenterOffset: -11
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: _text39
            color: "#0000ff"
            text: qsTr("00.00")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            anchors.verticalCenterOffset: 7
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: _text40
            color: "#008000"
            text: qsTr("00.00")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            anchors.verticalCenterOffset: 38
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: _text41
            color: "#ff0000"
            text: qsTr("00.00")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
            anchors.verticalCenterOffset: 24
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: altitudeDialSection
        x: 417
        y: 60
        width: 100
        height: 100
        color: Constants.darkAreasColor
        radius: 10

        Dial {
            id: control1
            value: 75
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
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
            x: 29
            y: 49
            width: 20
            height: 50
            color: parent.color
            rotation: 42
        }

        Rectangle {
            id: rectangle50
            x: 51
            y: 50
            width: 20
            height: 50
            color: parent.color
            rotation: -42
        }

        Rectangle {
            id: rectangle51
            x: 30
            y: 75
            width: 40
            height: 25
            color: parent.color
        }

        Text {
            id: _text44
            y: 28
            width: 43
            height: 16
            text: qsTr("Altitude")
            font.pixelSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            color: mainBackgound.txtColor
        }

        Text {
            id: _text45
            y: 49
            text: qsTr("0000")
            font.pixelSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            color: mainBackgound.txtColor
        }
    }

    Rectangle {
        id: timesInformationSection
        x: 523
        y: 169
        width: 100
        height: 100
        color: Constants.darkAreasColor
        radius: 10

        Text {
            id: _text2
            x: 42
            y: 5
            text: qsTr("00:00:00")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text3
            x: 22
            y: 4
            text: qsTr("T:+")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text33
            x: 26
            y: 46
            text: qsTr("00:00:00")
            font.pixelSize: 15
            color: mainBackgound.txtColor
        }

        Text {
            id: _text34
            x: 8
            y: 30
            text: qsTr("Total Flight Time")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle41
            x: 8
            y: 23
            width: 84
            height: 3
            color: "#000000"
        }

        Rectangle {
            id: rectangle42
            x: 8
            y: 69
            width: 84
            height: 3
            color: "#000000"
        }

        Text {
            id: _text35
            x: 8
            y: 77
            text: qsTr("Apogee:")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text36
            x: 53
            y: 78
            text: qsTr("3000")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text37
            x: 82
            y: 78
            text: qsTr("m")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }
    }

    Rectangle {
        id: speedDialSection
        x: 417
        y: 169
        width: 100
        height: 100
        color: Constants.darkAreasColor
        radius: 10
        border.width: 1

        Dial {
            id: control
            value: 35
            anchors.fill: parent
            anchors.leftMargin: 5
            anchors.rightMargin: 5
            anchors.topMargin: 5
            anchors.bottomMargin: 5
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
            x: 29
            y: 49
            width: 20
            height: 50
            color: parent.color
            rotation: 42
        }

        Rectangle {
            id: rectangle47
            x: 51
            y: 50
            width: 20
            height: 50
            color: parent.color
            rotation: -42
        }

        Rectangle {
            id: rectangle48
            x: 30
            y: 75
            width: 40
            height: 25
            color: parent.color
        }

        Text {
            id: _text42
            x: 33
            y: 28
            width: 34
            height: 16
            text: qsTr("Speed")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text43
            x: 40
            y: 49
            text: qsTr("000")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }
    }

    Rectangle {
        id: timelineSection
        x: 15
        y: 8
        width: 571
        height: 46
        color: Constants.darkAreasColor
        radius: 10

        Rectangle {
            id: rectangle4
            x: 21
            y: 20
            width: 533
            height: 7
            color: Constants.secondaryColor
            radius: 4
        }

        Rectangle {
            id: rectangle13
            x: 21
            y: 20
            width: 200
            height: 7
            color: Constants.mainColor
            radius: 4
        }

        Rectangle {
            id: rectangle36
            x: 21
            y: 9
            width: 7
            height: 30
            color: "#eb5e24"
            radius: 13
        }

        Rectangle {
            id: rectangle37
            x: 176
            y: 8
            width: 7
            height: 30
            color: "#eb5e24"
            radius: 13
        }

        Rectangle {
            id: rectangle38
            x: 547
            y: 9
            width: 7
            height: 30
            color: "#283747"
            radius: 13
        }

        Rectangle {
            id: rectangle39
            x: 419
            y: 8
            width: 7
            height: 30
            color: "#283747"
            radius: 13
        }

        Rectangle {
            id: rectangle40
            x: 260
            y: 8
            width: 7
            height: 30
            color: "#283747"
            radius: 13
        }

        Text {
            id: _text24
            x: 30
            y: 3
            text: qsTr("Boost")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text25
            x: 30
            y: 25
            text: qsTr("T:+ 00:00:00")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text26
            x: 189
            y: 25
            text: qsTr("T:+ 00:00:00")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text27
            x: 432
            y: 25
            text: qsTr("T:+ 00:00:00")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text28
            x: 432
            y: 25
            text: qsTr("T:+ 00:00:00")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text29
            x: 186
            y: 2
            text: qsTr("Apogee")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text30
            x: 273
            y: 2
            text: qsTr("Drogue")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text31
            x: 432
            y: 3
            text: qsTr("Main")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Text {
            id: _text32
            x: 273
            y: 25
            text: qsTr("T:+ 00:00:00")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }
    }

    Rectangle {
        id: mainParachutteInformationSection
        x: 15
        y: 212
        width: 195
        height: 57
        color: Constants.darkAreasColor
        radius: 10

        Rectangle {
            id: rectangle17
            x: 40
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text4
            x: 0
            y: 19
            text: qsTr("MAIN")
            font.pixelSize: 14
            font.bold: true
            rotation: -90
            color: mainBackgound.txtColor
        }

        Text {
            id: _text9
            x: 43
            y: 23
            text: qsTr("A1")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle18
            x: 61
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text10
            x: 64
            y: 23
            text: qsTr("A2")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle26
            x: 82
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text11
            x: 85
            y: 23
            text: qsTr("A3")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle27
            x: 103
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text12
            x: 106
            y: 23
            text: qsTr("A4")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle28
            x: 124
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text13
            x: 127
            y: 23
            text: qsTr("A5")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Text {
            id: _text6
            x: 63
            y: 40
            text: qsTr("BP")
            font.pixelSize: 10
            color: mainBackgound.txtColor
        }

        Text {
            id: _text7
            x: 111
            y: 40
            text: qsTr("CO2")
            font.pixelSize: 10
            color: mainBackgound.txtColor
        }

        Text {
            id: _text8
            x: 151
            y: 18
            text: qsTr("Chamber 1")
            font.pixelSize: 8
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle15
            x: 149
            y: 3
            width: 42
            height: 15
            color: "#001eff"
        }

        Text {
            id: _text14
            x: 151
            y: 43
            text: qsTr("Chamber 1")
            font.pixelSize: 8
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle16
            x: 149
            y: 28
            width: 42
            height: 15
            color: "#001eff"
        }

        Rectangle {
            id: rectangle29
            x: 38
            y: 36
            width: 61
            height: 3
            color: "#000000"
        }

        Rectangle {
            id: rectangle30
            x: 101
            y: 36
            width: 42
            height: 3
            color: "#000000"
        }
    }

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
        cameraDevice: mediaDevices.defaultVideoInput
        //"HD User Facing"//mediaDevices.defaultVideoInput
        //onActiveChanged: console.log("Cámara activa:", active)
    }

    VideoOutput {
        id: videoOutput
        x: 417
        y: 275
        width: 206
        height: 197
    }

    Rectangle {
        id: d3ViewSection
        x: 417
        y: 275
        width: 206
        height: 197
        color: Constants.darkAreasColor
        radius: 10
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
        id: gpsGraphSection
        x: 148
        y: 275
        width: 263
        height: 197
        color: Constants.darkAreasColor
        radius: 10

        GraphsView {
            id: gpsGraph
            x: -49
            y: 8
            width: 304
            height: 226
            marginRight: 0
            marginLeft: 0
            marginBottom: 0
            marginTop: 0
            theme: GraphsTheme {
                backgroundVisible: false

                axisX.mainColor: "transparent"
                axisY.mainColor: "transparent"

                plotAreaBackgroundColor: "transparent"

                axisX.labelTextColor: "#000000" //constants.graphsTextMainColor()
                axisY.labelTextColor: "#000000" //constants.graphsTextMainColor()

                plotAreaBackgroundVisible: false

                seriesColors: ["black", "black", "red", "blue"]

                gridVisible: false
            }

            axisX: ValueAxis {
                id: axisXGraphGPS2D
                titleText: "Longitude"
                visible: false
                titleVisible: false
                max: 10
                tickInterval: 1
            }

            axisY: ValueAxis {
                id: axisYGraphGPS2D
                visible: false
                titleVisible: false
                titleText: "Latitude"
                tickInterval: 5
            }

            LineSeries {
                id: graphGPS2DVerticalAxis
                color: "#00000000"
                XYPoint {
                    x: 0
                    y: -10
                }
                XYPoint {
                    x: 0
                    y: 10
                }
            }

            LineSeries {
                id: graphGPS2DHorizontalAxis
                XYPoint {
                    x: -10
                    y: 0
                }
                XYPoint {
                    x: 10
                    y: 0
                }
            }

            LineSeries {
                id: graphGPS2DNewerValues
            }

            LineSeries {
                id: graphGPS2DOlderValues
            }
        }
    }

    Rectangle {
        id: conectionInfoSection
        x: 15
        y: 425
        width: 127
        height: 47
        color: Constants.darkAreasColor
        radius: 10

        Text {
            id: _text
            x: 44
            y: 8
            text: qsTr("Rocket")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: mainBackgound.txtColor
        }

        Text {
            id: _text1
            x: 86
            y: 8
            text: qsTr("Server")
            font.pixelSize: 12
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle19
            x: 55
            y: 24
            width: 15
            height: 15
            color: "#ff0000"
            radius: 15 / 2
        }

        Rectangle {
            id: rectangle20
            x: 95
            y: 24
            width: 15
            height: 15
            color: "#ff0000"
            radius: 15 / 2
        }
    }

    DelayButton {
        id: delayButton
        x: 15
        y: 275
        width: 127
        height: 44
        text: qsTr("Emergency Deploy")
    }

    Button {
        id: button
        x: 15
        y: 375
        width: 60
        height: 44
        text: qsTr("Button")
    }

    Button {
        id: button1
        x: 82
        y: 375
        width: 60
        height: 44
        text: qsTr("Button")
    }

    Rectangle {
        id: drogueParachutteInformationSection
        x: 216
        y: 212
        width: 195
        height: 57
        color: Constants.darkAreasColor
        radius: 10
        Rectangle {
            id: rectangle22
            x: 40
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text5
            x: -10
            y: 20
            text: qsTr("DROGUE")
            font.pixelSize: 12
            rotation: -90
            font.bold: true
            color: mainBackgound.txtColor
        }

        Text {
            id: _text15
            x: 43
            y: 23
            text: qsTr("A1")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle23
            x: 61
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text16
            x: 64
            y: 23
            text: qsTr("A2")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle31
            x: 82
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text17
            x: 85
            y: 23
            text: qsTr("A3")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle32
            x: 103
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text18
            x: 106
            y: 23
            text: qsTr("A4")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle33
            x: 124
            y: 9
            width: 15
            height: 15
            color: "#ff0000"
        }

        Text {
            id: _text19
            x: 127
            y: 23
            text: qsTr("A5")
            font.pixelSize: 8
            rotation: 0
            color: mainBackgound.txtColor
        }

        Text {
            id: _text20
            x: 63
            y: 40
            text: qsTr("BP")
            font.pixelSize: 10
            color: mainBackgound.txtColor
        }

        Text {
            id: _text21
            x: 111
            y: 40
            text: qsTr("CO2")
            font.pixelSize: 10
            color: mainBackgound.txtColor
        }

        Text {
            id: _text22
            x: 151
            y: 18
            text: qsTr("Chamber 1")
            font.pixelSize: 8
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle24
            x: 149
            y: 3
            width: 42
            height: 15
            color: "#001eff"
        }

        Text {
            id: _text23
            x: 151
            y: 43
            text: qsTr("Chamber 1")
            font.pixelSize: 8
            color: mainBackgound.txtColor
        }

        Rectangle {
            id: rectangle25
            x: 149
            y: 28
            width: 42
            height: 15
            color: "#001eff"
        }

        Rectangle {
            id: rectangle34
            x: 38
            y: 36
            width: 61
            height: 3
            color: "#000000"
        }

        Rectangle {
            id: rectangle35
            x: 101
            y: 36
            width: 42
            height: 3
            color: "#000000"
        }
    }

    Image {
        id: volta
        x: 15
        y: 429
        width: 40
        source: "images/Volta.png"
        fillMode: Image.PreserveAspectFit
    }

    Button {
        id: button2
        x: 15
        y: 325
        width: 127
        height: 44
        text: qsTr("Button")
    }
}

/*##^##
Designer {
    D{i:0;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:100;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:102;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
D{i:90;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

