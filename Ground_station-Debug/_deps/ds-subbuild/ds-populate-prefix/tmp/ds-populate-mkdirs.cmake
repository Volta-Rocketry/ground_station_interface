# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-src"
  "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-build"
  "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-subbuild/ds-populate-prefix"
  "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-subbuild/ds-populate-prefix/tmp"
  "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
  "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-subbuild/ds-populate-prefix/src"
  "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/andres/Documents/repos/ground_station_interface/Ground_station-Debug/_deps/ds-subbuild/ds-populate-prefix/src/ds-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
