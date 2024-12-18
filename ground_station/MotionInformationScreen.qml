import QtQuick 2.0
import QtGraphs

Item {
    width: parent.width
    height: parent.height

    Rectangle {
        width: parent.width
        height: parent.height
        color: "green"

        Text {
            anchors.centerIn: parent
            text: "This is Motion information screen"
        }

        GraphsView {
            id: line
            width: parent.width*0.40
            height: parent.height*0.40
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.topMargin: 5

            theme: GraphsTheme {
            backgroundColor: "#f342ff"
            backgroundVisible: false

            grid.mainColor: "cyan"
            grid.subColor: "blue"

            plotAreaBackgroundColor : "white"
            plotAreaBackgroundVisible: false

            labelBackgroundColor: "black"
            labelBackgroundVisible: true
            labelBorderVisible: false
            labelTextColor: "white"

            seriesColors:["red", "blue","green"]
            }

            axisX: ValueAxis {
                titleText: "Time (s)"
                max: 5
                tickInterval: 1
            }

            axisY: ValueAxis {
                    min: -1
                    max: 3
            }

            LineSeries {
                id: lineSeries
                XYPoint { x: 0.5; y: 0.5 }
                XYPoint { x: 1; y: 1 }
                XYPoint { x: 2; y: 2 }
                XYPoint { x: 2.5; y: 1.5 }
            }

            LineSeries {
                id: lineSeries2
                XYPoint { x: 0.5; y: 0.5+0.5 }
                XYPoint { x: 1; y: 1 +0.5}
                XYPoint { x: 2; y: 2 +0.5}
                XYPoint { x: 2.5; y: 1.5+0.5 }
            }

            LineSeries {
                id: lineSeries3
                XYPoint { x: 0.5; y: 0.5 -0.5}
                XYPoint { x: 1; y: 1 -0.5}
                XYPoint { x: 2; y: 2 -0.5}
                XYPoint { x: 2.5; y: 1.5-0.5 }
            }
        }
    }
}
