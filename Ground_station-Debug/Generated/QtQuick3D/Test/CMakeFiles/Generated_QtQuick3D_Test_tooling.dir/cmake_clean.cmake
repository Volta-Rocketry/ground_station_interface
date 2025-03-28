file(REMOVE_RECURSE
  "../../../qml/Generated/QtQuick3D/Test/Test.qml"
  "../../../qml/Generated/QtQuick3D/Test/_importdata.json"
  "../../../qml/Generated/QtQuick3D/Test/meshes/body1_mesh.mesh"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/Generated_QtQuick3D_Test_tooling.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
