pragma Singleton
import QtQuick
import QtQuick.Studio.Application

QtObject {
    readonly property int width: 640
    readonly property int height: 480

    property string relativeFontDirectory: "fonts"

    /* Edit this comment to add your custom font */
    readonly property font font: Qt.font({
                                             family: Qt.application.font.family,
                                             pixelSize: Qt.application.font.pixelSize
                                         })
    readonly property font largeFont: Qt.font({
                                                  family: Qt.application.font.family,
                                                  pixelSize: Qt.application.font.pixelSize * 1.6
                                              })

    readonly property color lightBackgroundColor: "#e8e8e8"
    readonly property color lightAreasColor: "#ffffff"
    //readonly property color lightTextColor: "#black"
    readonly property color darkTextColor: "#ffffff"
    readonly property color darkBackgroundColor: "black"
    readonly property color darkAreasColor: "#2E2D2D"//A23C02
    readonly property color mainColor: "#eb5e24"
    readonly property color secondaryColor: "#283747"




    property StudioApplication application: StudioApplication {
        fontPath: Qt.resolvedUrl("../Ground_stationContent/" + relativeFontDirectory)
    }
}
