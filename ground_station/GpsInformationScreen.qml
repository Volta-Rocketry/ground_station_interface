import QtQuick 2.0
import QtQuick.Controls
import QtGraphs

Item {
    width: parent.width
    height: parent.height

    Connections{
        target: serialConfig
        function onGpsDataReady(){
            axisXGraphGPS2D.max = serialConfig.getLonMaxValue() +1 //Lon
            axisXGraphGPS2D.min = serialConfig.getLonMinValue() -1
            axisYGraphGPS2D.min =  serialConfig.getLatMinValue() - 1
            axisYGraphGPS2D.max = serialConfig.getLatMaxValue() + 1

            //axisYGraphAltitude.tickInterval = (serialConfig.getCurrentAltMaxValue() - serialConfig.getCurrentAltMinValue()) /5
            console.log("Data")
            console.log(serialConfig.getGraphsMaxMemory())
            console.log(serialConfig.getGraphsMaxMemory()/2)

            graphGPS2DNewerValues.append(serialConfig.getNewerLonLastValue(),serialConfig.getNewerLatLastValue())

            if (graphGPS2DNewerValues.count>(serialConfig.getGraphsMaxMemory()/2)) {
                graphGPS2DOlderValues.append(serialConfig.getOlderLonLastValue(),serialConfig.getOlderLatLastValue())
                if (graphGPS2DNewerValues.count>(serialConfig.getGraphsMaxMemory()/2)+1) {
                    graphGPS2DNewerValues.remove(0)  // Remove the first point (oldest)
                }

                if(graphGPS2DOlderValues.count> (serialConfig.getGraphsMaxMemory()/2)){
                    graphGPS2DOlderValues.remove(0)  // Remove the first point (oldest)
                    console.log(graphGPS2DNewerValues.count)
                    console.log(graphGPS2DOlderValues.count)
                }
            }
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: constants.mainBackgroundColor()

        GraphsView {
            id: graphGPS2D
            width: parent.height*0.67
            height: graphGPS2D.width
            anchors.top: parent.top
            anchors.topMargin: parent.height*0.094
            anchors.horizontalCenterOffset: parent.height*-0.405
            anchors.horizontalCenter: parent.horizontalCenter

            theme: GraphsTheme {
            backgroundVisible: false

            axisX.mainColor: "transparent"
            axisY.mainColor: "transparent"

            plotAreaBackgroundColor : "transparent"

            axisX.labelTextColor: constants.graphsTextMainColor()
            axisY.labelTextColor: constants.graphsTextMainColor()

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
                XYPoint { x: 5; y: -10 }
                XYPoint { x: 5; y: 10 }
            }

            LineSeries {
                id: graphGPS2DHorizontalAxis
                XYPoint { x: -10; y: 5}
                XYPoint { x: 10; y: 5 }
            }

            LineSeries {
                id: graphGPS2DNewerValues
            }

            LineSeries {
                id: graphGPS2DOlderValues
            }

        }

        Rectangle {
            id: graph2
            width: parent.height*0.67
            height: graph2.width
            color: "#000000"
            anchors.verticalCenter: graphGPS2D.verticalCenter
            anchors.left: graphGPS2D.right
            anchors.leftMargin: parent.height*0.134
        }

        Text {
            id: txtLatitude
            text: qsTr("Latitude")
            anchors.top: txtLatitudeVal.bottom
            anchors.topMargin: 3
            font.pixelSize: parent.height*0.043
            anchors.horizontalCenter: txtLatitudeVal.horizontalCenter
        }

        Text {
            id: txtLongitudeVal
            text: qsTr("00000000")
            anchors.verticalCenter: txtLatitudeVal.verticalCenter
            anchors.left: txtLatitudeVal.right
            anchors.leftMargin: parent.height*0.054
            font.pixelSize: parent.height*0.07
        }

        Text {
            id: txtLatitudeVal
            text: qsTr("00000000")
            anchors.top: graphGPS2D.bottom
            anchors.topMargin: parent.height*0.04
            font.pixelSize: parent.height*0.07
            anchors.horizontalCenterOffset: parent.height*-0.188
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLongitude
            text: qsTr("Longitude")
            anchors.top: txtLongitudeVal.bottom
            anchors.topMargin: parent.height*0.008
            font.pixelSize: parent.height*0.043
            anchors.horizontalCenter: txtLongitudeVal.horizontalCenter
        }
    }
}
