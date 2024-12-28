import QtQuick 2.0
import QtQuick.Controls
import QtGraphs

Item {
    width: parent.width
    height: parent.height

    Connections{
        target: serialConfig
        function onCoreDataUpdated(){
            axisXGraphAltitude.max = serialConfig.actualTimeUTC()
            axisXGraphAltitude.min = serialConfig.prevTimeUTC()
            axisYGraphAltitude.min =  serialConfig.getCoreDataItem(6) -5//graphUpdater.xDat() -10
            axisYGraphAltitude.max = serialConfig.getCoreDataItem(6) +5
            altitudeSeries.append(serialConfig.actualTime(),serialConfig.getCoreDataItem(6))

            if (altitudeSeries.count> 11) {
                altitudeSeries.remove(0)  // Remove the first point (oldest)
            }

            axisXGraphAccel.max = serialConfig.actualTimeUTC()
            axisXGraphAccel.min = serialConfig.prevTimeUTC()
            axisYGraphAccel.min = serialConfig.getCoreDataItem(0) -10
            axisYGraphAccel.max = serialConfig.getCoreDataItem(0) +10
            accelXSeries.append(serialConfig.actualTime(),serialConfig.getCoreDataItem(0))
            accelYSeries.append(serialConfig.actualTime(),serialConfig.getCoreDataItem(1))
            accelZSeries.append(serialConfig.actualTime(),serialConfig.getCoreDataItem(2))

            if (accelXSeries.count> 10) {
                accelXSeries.remove(0)  // Remove the first point (oldest)
            }

            if (accelYSeries.count> 10) {
                accelYSeries.remove(0)  // Remove the first point (oldest)
            }


            if (accelZSeries.count> 10) {
                accelZSeries.remove(0)  // Remove the first point (oldest)
            }
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: constants.mainBackgroundColor()

        GraphsView {
            id: graph_altitude
            width: parent.width*0.45
            height: parent.height*0.5
            anchors.left: graph_accel.horizontalCenter
            anchors.top: parent.top
            anchors.leftMargin: -graph_altitude.width/2
            anchors.topMargin: 5

            theme: GraphsTheme {
            backgroundVisible: false

            grid.mainColor: constants.graphsGridMainColor()
            axisY.mainColor: constants.graphsGridMainColor()
            axisX.mainColor: constants.graphsGridMainColor()
            grid.subColor: "blue"

            axisX.labelTextColor: constants.graphsTextMainColor()
            axisY.labelTextColor: constants.graphsTextMainColor()

            plotAreaBackgroundColor : constants.mainBackgroundColor()
            plotAreaBackgroundVisible: false

            seriesColors:["red", "blue","green"]
            }

            axisX: ValueAxis {
                id: axisXGraphAltitude
                titleText: "Time (s)"
                max: 10
                tickInterval: 1
            }

            axisY: ValueAxis {
                id: axisYGraphAltitude
                titleText: "Altitude (m)"
                tickInterval: 5
            }

            LineSeries {
                id: altitudeSeries
            }
        }

        GraphsView {
            id: graph_accel
            width: parent.width*0.55
            anchors.left: parent.left
            anchors.top: graph_altitude.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 30
            anchors.topMargin: 20
            anchors.bottomMargin: 21

            theme: GraphsTheme {
            backgroundVisible: false

            grid.mainColor: constants.graphsGridMainColor()
            axisY.mainColor: constants.graphsGridMainColor()
            axisX.mainColor: constants.graphsGridMainColor()
            grid.subColor: "blue"

            axisX.labelTextColor: constants.graphsTextMainColor()
            axisY.labelTextColor: constants.graphsTextMainColor()

            plotAreaBackgroundColor : constants.mainBackgroundColor()
            plotAreaBackgroundVisible: false

            seriesColors:["red", "blue","green"]
            }

            axisX: ValueAxis {
                id: axisXGraphAccel
                titleText: "Time (s)"
                max: 10
                tickInterval: 1
            }

            axisY: ValueAxis {
                id: axisYGraphAccel
                titleText: "Accel (m/s^2)"
                tickInterval: 5
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
            id: speedometer
            width: parent.height*0.40
            height: speedometer.width
            color: "#000000"
            radius: speedometer.width/2
            anchors.left: graph_accel.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0 + parent.width*0.1
            anchors.bottomMargin: 30
        }

        Rectangle {
            id: euler_angles
            width: parent.height*0.4
            height: euler_angles.width
            color: "#000000"
            anchors.left: speedometer.horizontalCenter
            anchors.top: parent.top
            anchors.leftMargin: -euler_angles.width/2
            anchors.topMargin: 8
        }
    }
}

