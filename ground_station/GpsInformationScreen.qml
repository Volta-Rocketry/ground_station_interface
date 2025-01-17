import QtQuick 2.0
import QtQuick.Controls
import QtGraphs

Item {
    width: parent.width
    height: parent.height

    Connections{
        target: serialConfig
        function onGpsDataReady(){

            txtLatitudeVal.text = serialConfig.getNewerLatLastValue()
            txtLongitudeVal.text = serialConfig.getNewerLonLastValue()


            axisXGraphGPS2D.max = serialConfig.getLonMaxValue() +1 //Lon
            axisXGraphGPS2D.min = serialConfig.getLonMinValue() -1
            axisYGraphGPS2D.min =  serialConfig.getLatMinValue() - 1
            axisYGraphGPS2D.max = serialConfig.getLatMaxValue() + 1

            //axisYGraphAltitude.tickInterval = (serialConfig.getCurrentAltMaxValue() - serialConfig.getCurrentAltMinValue()) /5

            graphGPS2DNewerValues.append(serialConfig.getNewerLonLastValue(),serialConfig.getNewerLatLastValue())

            if (graphGPS2DNewerValues.count>(serialConfig.getGraphsMaxMemory()/2)) {
                graphGPS2DOlderValues.append(serialConfig.getOlderLonLastValue(),serialConfig.getOlderLatLastValue())
                if (graphGPS2DNewerValues.count>(serialConfig.getGraphsMaxMemory()/2)+1) {
                    graphGPS2DNewerValues.remove(0)  // Remove the first point (oldest)
                }

                if(graphGPS2DOlderValues.count> (serialConfig.getGraphsMaxMemory()/2)){
                    graphGPS2DOlderValues.remove(0)  // Remove the first point (oldest)
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

        Rectangle {
            id: graph2
            width: parent.height*0.67
            height: graph2.width
            color: "#8d918e"
            anchors.verticalCenter: graphGPS2D.verticalCenter
            anchors.left: graphGPS2D.right
            anchors.leftMargin: parent.height*0.134

            Text{
                anchors.centerIn: parent
                text: "Soon"
                font.pixelSize: parent.width*0.2
            }
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
            text: serialConfig.getNewerLonLastValue()
            anchors.verticalCenter: txtLatitudeVal.verticalCenter
            font.pixelSize: parent.height*0.07
            anchors.horizontalCenter: txtLongitude.horizontalCenter
        }

        Text {
            id: txtLatitudeVal
            text: serialConfig.getNewerLatLastValue()
            anchors.top: graphGPS2D.bottom
            anchors.topMargin: parent.height*0.04
            font.pixelSize: parent.height*0.07
            anchors.horizontalCenterOffset: parent.height*-0.188
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: txtLongitude
            text: qsTr("Longitude")
            anchors.left: txtLatitude.right
            anchors.top: txtLongitudeVal.bottom
            anchors.leftMargin: parent.height*0.16
            anchors.topMargin: parent.height*0.008
            font.pixelSize: parent.height*0.043
        }
    }
}
