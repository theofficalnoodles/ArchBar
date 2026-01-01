cmake_minimum_required(VERSION 3.16)
project(ArchBar)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Quick Widgets)
find_package(Plasma REQUIRED)

add_library(archbarplugin MODULE
    src/ArchBarContainment.cpp
    include/ArchBarContainment.h
)

target_link_libraries(archbarplugin
    Qt6::Core
    Qt6::Quick
    Qt6::Widgets
    Plasma::Framework
)

install(TARGETS archbarplugin DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/qt/plugins/plasma/containments)
install(FILES metadata.json DESTINATION ${CMAKE_INSTALL_PREFIX}/share/kservices5/)
