find_package(TCL REQUIRED VERSION 8.5)
find_package(Boost REQUIRED COMPONENTS system regex date_time program_options filesystem)

#WARNING: NOT CROSS PLATFORM
include(FindPkgConfig)

pkg_check_modules(RSVG REQUIRED librsvg-2.0)

include_directories(${RSVG_INCLUDE_DIRS})
