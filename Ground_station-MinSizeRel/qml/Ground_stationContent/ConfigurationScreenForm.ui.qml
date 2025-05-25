

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls

Rectangle {
    id: display
    width: 900
    height: 600

    property alias btnSearch: btnSearch
    property alias cbBaudRate: cbBaudRate
    property alias cbSerialPort: cbSerialPort
    property alias btnConnect: btnConnect
    property alias cbSerialPortModel: cbSerialPortModel
    property alias btnSelectRoute: btnSelectRoute
    property alias txtRouteSelected: txtRouteSelected
    property alias edtFileName: edtFileName
    property alias swtSaveFinish: swtSaveFinish
    property alias swtSaveStart: swtSaveStart
    property alias edtEstimatedApogee: edtEstimatedApogee
    property alias edtEstimatedMain: edtEstimatedMain
    property alias edtEstimatedTouchDown: edtEstimatedTouchDown
    property alias edtTittleFrecuency: edtTittleFrecuency

    color: "#7dffffff"

    Text {
        id: txtMainTitle
        x: 352
        y: 40
        width: display.width * 0.278
        height: display.height * 0.158
        text: "Settings" //qsTr(constants.appName())
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.052
        font.pixelSize: parent.height * 0.117
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: sectionSerialConnection
        x: 66
        width: display.width * 0.284
        height: display.height * 0.608
        color: "#00ffffff"
        anchors.right: sectionDataSave.left
        anchors.top: txtMainTitle.bottom
        anchors.rightMargin: display.width * 0.056
        anchors.topMargin: display.height * 0.067

        Text {
            id: txtTittleBaudRate
            height: display.height * 0.053
            text: qsTr("Baud Rate")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        ComboBox {
            id: cbBaudRate
            y: 26
            height: display.height * 0.075
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleBaudRate.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0

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
            id: txtTittlePort
            x: -506
            y: 90
            height: display.height * 0.053
            text: qsTr("Port")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: cbBaudRate.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: display.height * 0.025
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        ComboBox {
            id: cbSerialPort
            x: -608
            y: 137
            height: display.height * 0.075
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittlePort.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0

            currentIndex: 0
            model: cbSerialPortModel


            /*onActivated:{
                   serialConfig.savePortConnection(cbSerialPort.currentText)
               }*/
            ListModel {
                id: cbSerialPortModel
                ListElement {
                    key: "Test Mode"
                }
            }
        }

        Button {
            id: btnSearch
            y: 185
            height: display.height * 0.075
            text: "Search"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: cbSerialPort.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: display.height * 0.008
            autoRepeat: false
            flat: false


            /*onClicked:{

                   cbSerialPortModel.clear();

                   cbSerialPortModel.append({key: "Test Mode"});

                   let ports = serialConfig.searchPortInfo();

                   for (let i = 0; i < ports.length; i++) {
                       cbSerialPortModel.append({ key: ports[i] });
                   }
               }*/
        }

        Button {
            id: btnConnect
            x: -561
            width: display.width * 0.178
            height: display.height * 0.075
            text: "Connect"
            anchors.top: btnSearch.bottom
            anchors.topMargin: display.height * 0.025
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: sectionDataSave
        x: 388
        width: sectionSerialConnection.width
        height: sectionSerialConnection.height
        color: "#005c5c5c"
        anchors.top: sectionSerialConnection.top
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: txtTittleSelectRoute
            y: -440
            height: display.height * 0.053
            text: qsTr("Select Route")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        Button {
            id: btnSelectRoute
            height: display.height * 0.075
            text: qsTr("Select Route")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleSelectRoute.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
        }

        Text {
            id: txtRouteSelected
            height: display.height * 0.053
            text: qsTr("Here goes the rute")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: btnSelectRoute.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
        }

        Text {
            id: txtTittleFileName
            height: display.height * 0.053
            text: qsTr("File name")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtRouteSelected.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: display.height * 0.025
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        TextEdit {
            id: edtFileName
            height: display.height * 0.053
            text: qsTr("File_Name_Today")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleFileName.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
        }

        Text {
            id: txtTittleAutomatic
            height: display.height * 0.053
            text: qsTr("Automatic save")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: edtFileName.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: display.height * 0.025
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        Switch {
            id: swtSaveStart
            width: display.width * 0.242
            height: display.height * 0.075
            text: qsTr("Automatic Data Save Start")
            anchors.top: txtTittleAutomatic.bottom
            anchors.topMargin: 0
            font.pointSize: display.width * 0.01
            anchors.horizontalCenter: parent.horizontalCenter
            checked: true
        }

        Switch {
            id: swtSaveFinish
            width: display.width * 0.242
            height: display.height * 0.075
            text: qsTr("Automatic Data Save Finish")
            anchors.top: swtSaveStart.bottom
            anchors.topMargin: 0
            font.pointSize: display.width * 0.01
            anchors.horizontalCenter: parent.horizontalCenter
            checked: true
        }
    }

    Rectangle {
        id: sectionImportVars
        width: sectionSerialConnection.width
        height: sectionSerialConnection.height
        color: "#00ffffff"
        anchors.left: sectionDataSave.right
        anchors.top: sectionDataSave.top
        anchors.leftMargin: display.width * 0.056
        anchors.topMargin: 0

        Text {
            id: txtTittleEstimatedApogee
            height: display.height * 0.053
            text: qsTr("Estimated Apogee [m]")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        TextEdit {
            id: edtEstimatedApogee
            height: display.height * 0.053
            text: qsTr("3000")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleEstimatedApogee.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
        }

        Text {
            id: txtTittleEstimatedMainDeploy
            height: display.height * 0.053
            text: qsTr("Estimated Main deploy [m]")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: edtEstimatedApogee.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: display.height * 0.025
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        TextEdit {
            id: edtEstimatedMain
            height: display.height * 0.053
            text: qsTr("400")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleEstimatedMainDeploy.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
        }

        Text {
            id: txtTittleEstimatedTouchDown
            height: display.height * 0.053
            text: qsTr("Estimated Main deploy [m]")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: edtEstimatedMain.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: display.height * 0.025
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        TextEdit {
            id: edtEstimatedTouchDown
            height: display.height * 0.053
            text: qsTr("0")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleEstimatedTouchDown.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
        }

        Text {
            id: txtTittleFrecuency
            x: 0
            y: 189
            height: display.height * 0.053
            text: qsTr("Rocket Frequency [MHz]")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: edtEstimatedTouchDown.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: display.height * 0.025
            font.pixelSize: display.height * 0.033
            font.bold: true
        }

        TextEdit {
            id: edtTittleFrecuency
            x: 0
            y: 189
            height: display.height * 0.053
            text: qsTr("0")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: txtTittleFrecuency.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            font.pixelSize: display.height * 0.025
        }
    }
}
