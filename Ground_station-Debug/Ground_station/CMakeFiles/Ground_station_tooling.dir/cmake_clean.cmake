file(REMOVE_RECURSE
  "../qml/Ground_station/Constants.qml"
  "../qml/Ground_station/EventListModel.qml"
  "../qml/Ground_station/EventListSimulator.qml"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/Ground_station_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
