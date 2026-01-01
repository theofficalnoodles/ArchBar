cmake_minimum_required(VERSION 3.16)
project(ArchBar)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Quick Widgets)
find_package(KF6 REQUIRED COMPONENTS Plasma)
find_package(Plasma REQUIRED COMPONENTS Framework)

add_library(archbarplugin MODULE
    src/ArchBarContainment.cpp
)

target_include_directories(archbarplugin PRIVATE include)

target_link_libraries(archbarplugin
    Qt6::Core
    Qt6::Quick
    Qt6::Widgets
    Plasma::Plasma
    KF6::Plasma
)

install(TARGETS archbarplugin DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/qt6/plugins/plasma/containments)
install(FILES metadata.json DESTINATION ${CMAKE_INSTALL_PREFIX}/share/kservices6/)
install(DIRECTORY qml/ DESTINATION ${CMAKE_INSTALL_PREFIX}/share/plasma/plasmoids/org.archbar.topbar/contents/ui)
