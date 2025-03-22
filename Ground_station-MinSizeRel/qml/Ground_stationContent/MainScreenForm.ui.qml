

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

Rectangle {
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor
    View3D  {
        id: euler_angles
        x: 268
        width: 185
        height: 192
        anchors.left: speedometer.horizontalCenter
        anchors.top: parent.top
        anchors.leftMargin: -euler_angles.width/2
        anchors.topMargin: 88
        camera: orthographicCamera

        environment: SceneEnvironment {
            clearColor: Constants.backgroundColor
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

    Item {
        id: __materialLibrary__

        PrincipledMaterial {
            id: principledMaterial
            objectName: "New Material"
        }
    }

    Rectangle {
        id: rectangle4
        x: 106
        y: 8
        width: 408
        height: 46
        color: "#000000"
    }

    GraphsView {
        id: altitudeGraph
        x: 15
        y: 66
        width: 264
        height: 200

        theme: GraphsTheme {
            backgroundVisible: false

            grid.mainColor: "transparent"
            gridVisible: false
            axisY.mainColor:  "#000000" //constants.graphsGridMainColor()
            axisX.mainColor:  "#000000" //constants.graphsGridMainColor()

            axisX.labelTextColor:  "#000000"//constants.graphsTextMainColor()
            axisY.labelTextColor:  "#000000"//constants.graphsTextMainColor()

            plotAreaBackgroundColor : "transparent"
            plotAreaBackgroundVisible: false

            seriesColors:["red", "blue","green"]
        }

        axisX: ValueAxis {
            id: axisXGraphAltitude
            titleText: "Time (s)"
        }

        axisY: ValueAxis {
            id: axisYGraphAltitude
            titleText: "Altitude (m)"

        }

        LineSeries {
            id: altitudeSeries
        }
    }

    GraphsView {
        id: gpsGraph
        x: 268
        y: 262
        width: 200
        height: 200
        theme: GraphsTheme {
            backgroundVisible: false

            axisX.mainColor: "transparent"
            axisY.mainColor: "transparent"

            plotAreaBackgroundColor : "transparent"

            axisX.labelTextColor: "#000000" //constants.graphsTextMainColor()
            axisY.labelTextColor: "#000000" //constants.graphsTextMainColor()

            plotAreaBackgroundVisible: false

            seriesColors:["black", "black","red", "blue"]

            gridVisible: false
        }

        axisX: ValueAxis {
            id: axisXGraphGPS2D
            titleText: "Longitude"
            visible : false
            max: 10
            tickInterval: 1
        }

        axisY: ValueAxis {
            id: axisYGraphGPS2D
            visible : false
            titleText: "Latitude"
            tickInterval: 5
        }

        LineSeries {
            id: graphGPS2DVerticalAxis
            XYPoint { x: 0; y: -10 }
            XYPoint { x: 0; y: 10 }
        }

        LineSeries {
            id: graphGPS2DHorizontalAxis
            XYPoint { x: -10; y: 0}
            XYPoint { x: 10; y: 0}
        }

        LineSeries {
            id: graphGPS2DNewerValues
        }

        LineSeries {
            id: graphGPS2DOlderValues
        }
    }

    GraphsView {
        id: accelGraph
        x: 451
        y: 198
        width: 189
        height: 274
        theme: GraphsTheme {
            backgroundVisible: false

            grid.mainColor: "transparent"
            gridVisible: false
            axisY.mainColor: "#000000"//constants.graphsGridMainColor()
            axisX.mainColor: "#000000"//constants.graphsGridMainColor()

            axisX.labelTextColor: "#000000"//constants.graphsTextMainColor()
            axisY.labelTextColor: "#000000"//constants.graphsTextMainColor()

            plotAreaBackgroundColor: "transparent"
            plotAreaBackgroundVisible: false

            seriesColors:["red", "blue","green"]
        }

        axisX: ValueAxis {
            id: axisXGraphAccel
            titleText: "Time (s)"
        }

        axisY: ValueAxis {
            id: axisYGraphAccel
            titleText: "Accel (m/s^2)"
        }

        LineSeries {
            id: accelXSeries
        }

        LineSeries {
            id: accelYSeries
        }

        LineSeries {
            id: accelZSeries
        }
    }

    Rectangle {
        id: rectangle5
        x: 36
        y: 267
        width: 226
        height: 200
        color: "#ffffff"

        Rectangle {
            id: rectangle1
            y: 10
            width: 100
            height: rectangle1.width
            color: "#000000"
            radius: rectangle1.width/2
            anchors.left: parent.left
            anchors.leftMargin: 5
        }

        Rectangle {
            id: rectangle2
            x: 59
            y: 100
            width: 100
            height: rectangle2.width
            color: "#000000"
            radius: rectangle2.width/2
        }

        Rectangle {
            id: rectangle3
            width: 100
            height: rectangle3.width
            color: "#000000"
            radius: rectangle3.width/2
            anchors.verticalCenter: rectangle1.verticalCenter
            anchors.left: rectangle1.right
            anchors.leftMargin: 5
        }
    }



}

/*##^##
Designer {
    D{i:0;matPrevEnvDoc:"SkyBox";matPrevEnvValueDoc:"preview_studio";matPrevModelDoc:"#Sphere"}
D{i:1;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/
