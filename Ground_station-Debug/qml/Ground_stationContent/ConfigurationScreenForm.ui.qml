

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls

Rectangle {
    width: 1024
    height: 768

    property alias btnSearch: btnSearch
    property alias cbBaudRate: cbBaudRate
    property alias cbSerialPort: cbSerialPort
    property alias btnConnect: btnConnect
    property alias cbSerialPortModel: cbSerialPortModel

    Rectangle {
        id: rectangle
        color: "green" //constants.mainBackgroundColor()
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        Button {
            id: btnSearch
            width: parent.height * 0.333
            height: parent.height * 0.073
            text: "Search"
            anchors.top: cbSerialPort.bottom
            anchors.topMargin: 0
            autoRepeat: false
            flat: false
            anchors.horizontalCenter: cbSerialPort.horizontalCenter


            /*onClicked:{

                   cbSerialPortModel.clear();

                   cbSerialPortModel.append({key: "Test Mode"});

                   let ports = serialConfig.searchPortInfo();

                   for (let i = 0; i < ports.length; i++) {
                       cbSerialPortModel.append({ key: ports[i] });
                   }
               }*/
        }

        ComboBox {
            id: cbBaudRate
            width: parent.height * 0.333
            height: parent.height * 0.063
            anchors.top: txtTittleBaudRate.bottom
            anchors.topMargin: parent.height * 0.01
            anchors.horizontalCenter: txtTittleBaudRate.horizontalCenter

            currentIndex: 0
            model: cbBaudRateModel

            ListModel {
                id: cbBaudRateModel
                ListElement {
                    key: "115200"
                }
                ListElement {
                    key: "9600"
                }
                ListElement {
                    key: "1200"
                }
                ListElement {
                    key: "2400"
                }
                ListElement {
                    key: "4800"
                }
                ListElement {
                    key: "19200"
                }
                ListElement {
                    key: "38400"
                }
                ListElement {
                    key: "57600"
                }
            }


            /*onActivated:{
                   serialConfig.setBaudRateMode(cbBaudRate.currentIndex)
               }*/
        }

        Text {
            id: txtTittleBaudRate
            y: 206
            text: qsTr("Baud Rate")
            anchors.top: txtAppMainTitle.bottom
            anchors.topMargin: parent.height * 0.063
            font.pixelSize: parent.height * 0.038
            anchors.horizontalCenterOffset: parent.height * -0.139
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ComboBox {
            id: cbSerialPort
            width: parent.height * 0.333
            height: parent.height * 0.063
            anchors.top: txtTittlePort.bottom
            anchors.topMargin: parent.height * 0.01
            anchors.horizontalCenter: txtTittlePort.horizontalCenter

            currentIndex: 0
            model: cbSerialPortModel

            ListModel {
                id: cbSerialPortModel
                ListElement {
                    key: "Test Mode"
                }
            }


            /*onActivated:{
                   serialConfig.savePortConnection(cbSerialPort.currentText)
               }*/
        }

        Text {
            id: txtTittlePort
            text: qsTr("Port")
            anchors.top: cbBaudRate.bottom
            anchors.topMargin: parent.height * 0.021
            font.pixelSize: parent.height * 0.038
            anchors.horizontalCenter: cbBaudRate.horizontalCenter
        }

        Button {
            id: btnConnect
            y: 386
            width: parent.height * 0.417
            height: parent.height * 0.167
            text: "Connect"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: parent.height * 0.021
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Slider {
            id: sliderMaxChamberTem
            width: parent.height * 0.063
            height: parent.height * 0.333
            value: 50
            anchors.verticalCenter: sliderMinChamberTem.verticalCenter
            anchors.horizontalCenter: txtTittleMaxTemp.horizontalCenter
            orientation: Qt.Vertical
            to: 100


            /*onValueChanged: {
                   txtValueMaxTemp.text=(sliderMaxChamberTem.value.toFixed(0))
                   serialConfig.setChamberMaxPredictedTemp((sliderMinChamberTem.value.toFixed(0)))
               }*/
        }

        Text {
            id: txtValueMinTemp
            y: 131
            text: sliderMinChamberTem.value
            anchors.bottom: sliderMinChamberTem.top
            anchors.bottomMargin: parent.height * 0.01
            font.pixelSize: parent.height * 0.025
            anchors.horizontalCenter: txtTittleMinTemp.horizontalCenter
        }

        Slider {
            id: sliderMinChamberTem
            width: parent.height * 0.063
            height: parent.height * 0.333
            value: 10
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: txtTittleMinTemp.horizontalCenter
            orientation: Qt.Vertical
            to: 100


            /*onValueChanged: {
                   txtValueMinTemp.text = (sliderMinChamberTem.value.toFixed(0))
                   sliderMaxChamberTem.from =(sliderMinChamberTem.value.toFixed(0))
                   serialConfig.setChamberMinPredictedTemp((sliderMinChamberTem.value.toFixed(0)))
               }*/
        }

        Text {
            id: txtTittleMinTemp
            text: qsTr("Min")
            anchors.top: sliderMinChamberTem.bottom
            anchors.topMargin: parent.height * 0.01
            font.pixelSize: parent.height * 0.025
            anchors.horizontalCenterOffset: parent.height * -0.052
            anchors.horizontalCenter: txtTittleChamberTemperatures.horizontalCenter
        }

        Text {
            id: txtValueMaxTemp
            y: 131
            text: sliderMaxChamberTem.value
            anchors.bottom: sliderMaxChamberTem.top
            anchors.bottomMargin: parent.height * 0.01
            font.pixelSize: parent.height * 0.025
            anchors.horizontalCenter: sliderMaxChamberTem.horizontalCenter
        }

        Slider {
            id: sliderMaxDataMemory
            width: parent.height * 0.333
            height: parent.height * 0.063
            value: 100
            anchors.top: txtTittleMaxDataMemory.bottom
            anchors.topMargin: parent.height * 0.01
            anchors.horizontalCenter: txtTittleMaxDataMemory.horizontalCenter
            orientation: Qt.Horizontal
            from: 10
            to: 200


            /*onValueChanged: {
                   txtValueMaxDataMemory.text = (sliderMaxDataMemory.value.toFixed(0))
                   serialConfig.setGraphsMaxMemory(sliderMaxDataMemory.value.toFixed(0))
               }*/
        }

        Text {
            id: txtTittleMaxDataMemory
            text: qsTr("Max Data Memory")
            anchors.top: btnSearch.bottom
            anchors.topMargin: parent.height * 0.021
            font.pixelSize: parent.height * 0.038
            anchors.horizontalCenter: btnSearch.horizontalCenter
        }

        Text {
            id: txtValueMaxDataMemory
            text: (sliderMaxDataMemory.value.toFixed(0))
            anchors.top: sliderMaxDataMemory.bottom
            anchors.topMargin: 0
            font.pixelSize: parent.height * 0.025
            anchors.horizontalCenter: sliderMaxDataMemory.horizontalCenter
        }

        Text {
            id: txtTittleMaxTemp
            x: 426
            text: qsTr("Max")
            anchors.left: txtTittleMinTemp.right
            anchors.top: sliderMaxChamberTem.bottom
            anchors.leftMargin: parent.height * 0.042
            anchors.topMargin: parent.height * 0.01
            font.pixelSize: parent.height * 0.025
        }

        Text {
            id: txtTittleChamberTemperatures
            text: qsTr("Chamber Temperatures")
            anchors.left: cbSerialPort.right
            anchors.top: txtTittleMinTemp.bottom
            anchors.leftMargin: parent.height * 0.073
            anchors.topMargin: parent.height * 0.021
            font.pixelSize: parent.height * 0.038
        }

        Text {
            id: txtAppMainTitle
            text: "App name" //qsTr(constants.appName())
            anchors.top: parent.top
            anchors.topMargin: parent.height * 0.052
            font.pixelSize: parent.height * 0.117
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
