# Volta Ground Station (application)

https://github.com/user-attachments/assets/9b46e0fb-10a0-41cb-b969-b4429b6f2982

## Description

This project is an application designed for real-time data visualization and management for a rocket ground station, created for the Volta Rocketry Team. The interface allows monitoring of various parameters through interactive graphs and serial communication.

## Features
- **Real-time visualization**: Displays live-updated graphs for altitude, acceleration, and GPS data.
- **Dual communication**: Reliable communication with the rocket through the serial port, enabling both data transmission and reception.
- **Cross-platform compatibility**: Primarily designed for Raspberry Pi 4 with a resolution of 480x800, but also works on other platforms (Windows and Ubuntu have been tested).
- **Modern interface**: Built with **Qt** and **QML** to provide a smooth and customizable user experience.
- **Optimized**: Developed in C++, with low memory and CPU usage (~60MB, ~1.5%).

## Requirements and Software
- C++
- QML and QtQuick
- Qt 6.8.1
- Qt Graphs
- Qt Serial Port
- CMake (for project configuration and building)
- Compatible compiler (e.g., MinGW, llvm-mingw_64, GCC)

## Usage

### IMPORTANT

**WARNING**: Currently, the project does not provide pre-built executables such as `.exe` files for Windows or AppImage for Linux. The only way to run the application is directly from **Qt Creator**.

**WARNING**: The data sent through the serial port must follow a specific format to be properly analyzed and displayed.

### MCU Connection

1. Start the app.
2. Connect the MCU that will send data to the serial port.
3. Scan for new devices and select the connected MCU.
4. Configure the maximum data memory for display.
5. Start the connection.

### Test Mode

The app includes a test mode that will automatically generate random data to demonstrate and test the functionality of the application.

## Authors and Acknowledgments

UI design, code, and backend were developed by **Andrés Rodriguez**. Although the application was primarily developed for the Volta Rocketry Team's use and requirements, it is open for use in other projects with no restrictions, except for commercial use, which is prohibited by the author and Qt.

**Contact**: Andrés Rodriguez - [andreswii6@hotmail.com](mailto:andreswii6@hotmail.com) / [andres.rodriguez10@udea.edu.co](mailto:andres.rodriguez10@udea.edu.co)

## License

This project is licensed under the **LGPL-3.0 License**.  
You may redistribute and/or modify the code under the terms of the **Lesser General Public License** as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This project is distributed in the hope that it will be useful, but **WITHOUT ANY WARRANTY**, without even the implied warranty of **MERCHANTABILITY** or **FITNESS FOR A PARTICULAR PURPOSE**. See the [LICENSE](LICENSE) file for more details.

This project was developed primarily for educational purposes but is open for use in other projects as well.
