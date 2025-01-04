import QtQuick 2.0
import QtQuick.Controls
import QtGraphs

Item {
    width: parent.width
    height: parent.height

    Connections{
        target: serialConfig
        function onCoreDataReady(){
            axisXGraphAltitude.max = serialConfig.getCurrentTimeSFloat()
            axisYGraphAltitude.min =  serialConfig.getCurrentAltMinValue() - 1
            axisYGraphAltitude.max = serialConfig.getCurrentAltMaxValue() + 1

            axisYGraphAltitude.tickInterval = (serialConfig.getCurrentAltMaxValue() - serialConfig.getCurrentAltMinValue()) /5

            altitudeSeries.append(serialConfig.getCurrentTimeSFloat(),serialConfig.getLastCurrentAltValue())

            if (altitudeSeries.count>serialConfig.getGraphsMaxMemory()+1) {
                altitudeSeries.remove(0)  // Remove the first point (oldest)
            }
            axisXGraphAltitude.min = altitudeSeries.at(0).x
            //axisXGraphAltitude.tickInterval = (axisXGraphAltitude.max-axisXGraphAltitude.min)/5

            axisXGraphAccel.max = serialConfig.getCurrentTimeSFloat()
            axisYGraphAccel.min = serialConfig.getAbsAccelMinValue() - 1
            axisYGraphAccel.max = serialConfig.getAbsAccelMaxValue() + 1
            accelXSeries.append(serialConfig.getCurrentTimeSFloat(),serialConfig.getLastAccelXValue())
            accelYSeries.append(serialConfig.getCurrentTimeSFloat(),serialConfig.getLastAccelYValue())
            accelZSeries.append(serialConfig.getCurrentTimeSFloat(),serialConfig.getLastAccelZValue())

            axisYGraphAccel.tickInterval = (serialConfig.getAbsAccelMaxValue() - serialConfig.getAbsAccelMinValue()) /5
            if (accelXSeries.count> serialConfig.getGraphsMaxMemory()+1) {
                accelXSeries.remove(0)  // Remove the first point (oldest)
            }
            if (accelYSeries.count> serialConfig.getGraphsMaxMemory()+1) {
                accelYSeries.remove(0)  // Remove the first point (oldest)
            }
            if (accelZSeries.count> serialConfig.getGraphsMaxMemory()+1) {
                accelZSeries.remove(0)  // Remove the first point (oldest)
            }
            axisXGraphAccel.min = accelXSeries.at(0).x
            //axisXGraphAccel.tickInterval = (axisXGraphAccel.max-axisXGraphAccel.min)/5
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

            grid.mainColor: "transparent"
            gridVisible: false
            axisY.mainColor: constants.graphsGridMainColor()
            axisX.mainColor: constants.graphsGridMainColor()

            axisX.labelTextColor: constants.graphsTextMainColor()
            axisY.labelTextColor: constants.graphsTextMainColor()

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
                labelFormat: "%02d:%02d:%03d"
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

                grid.mainColor: "transparent"
                gridVisible: false
                axisY.mainColor: constants.graphsGridMainColor()
                axisX.mainColor: constants.graphsGridMainColor()

                axisX.labelTextColor: constants.graphsTextMainColor()
                axisY.labelTextColor: constants.graphsTextMainColor()

                plotAreaBackgroundColor : "transparent"
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

