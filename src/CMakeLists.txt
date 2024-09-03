cmake_minimum_required(VERSION 3.20)

project(MagicTower VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Widgets)

include_directories(gui)
include_directories(constant)

set(PROJECT_SOURCES
        main.cpp
        gui/MainWindow.cpp gui/MainWindow.h gui/MainWindow.ui
        gui/MapForm.cpp gui/MapForm.h gui/MapForm.ui
        gui/ScoreForm.cpp gui/ScoreForm.h gui/ScoreForm.ui
        constant/TowerConstant.h
)

qt_add_executable(MagicTower
        MANUAL_FINALIZATION
        ${PROJECT_SOURCES}
)

target_link_libraries(MagicTower PRIVATE Qt6::Widgets)

set_target_properties(MagicTower PROPERTIES
        ${BUNDLE_ID_OPTION}
        MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
        MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
        MACOSX_BUNDLE TRUE
        WIN32_EXECUTABLE TRUE
)

include(GNUInstallDirs)
install(TARGETS MagicTower
        BUNDLE DESTINATION .
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

qt_finalize_executable(MagicTower)
