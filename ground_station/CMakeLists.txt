cmake_minimum_required(VERSION 3.16)

project(ground_station VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick Graphs SerialPort QuickControls2)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appground_station
    main.cpp
)

qt_add_qml_module(appground_station
    URI ground_station
    VERSION 1.0
    QML_FILES
        Main.qml

        SOURCES uiconstants.h uiconstants.cpp
        SOURCES serialconfiguration.h serialconfiguration.cpp
        QML_FILES TestScreen.qml
        QML_FILES MotionInformationScreen.qml
        QML_FILES GpsInformationScreen.qml
        QML_FILES EyectionInformationScreen.qml
        QML_FILES GeneralInformationScreen.qml
        QML_FILES ComunicationInformationScreen.qml
        SOURCES graphdata.h graphdata.cpp
        QML_FILES StartScreen.qml
        QML_FILES PrincipalScreen.qml
        RESOURCES
        assets/images/coms_logo.png
        assets/images/eyection_logo.png
        assets/images/info_logo.png
        assets/images/motion_logo.png
        assets/images/gps_logo.png
        QML_FILES Info1Screen.qml
        QML_FILES Info2Screen.qml

)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appground_station PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appground_station
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appground_station
    PRIVATE Qt6::Quick
    Qt6::Graphs
    Qt6::SerialPort
    Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appground_station
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
