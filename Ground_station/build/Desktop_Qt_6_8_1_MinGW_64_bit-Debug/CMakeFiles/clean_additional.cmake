# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appground_station_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appground_station_autogen.dir\\ParseCache.txt"
  "appground_station_autogen"
  )
endif()
