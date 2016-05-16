find_package(TCL REQUIRED VERSION 8.5)
find_package(Boost REQUIRED COMPONENTS system regex date_time program_options filesystem)

find_package(wxWidgets)
find_package(Wt) 

#WARNING: NOT CROSS PLATFORM
include(FindPkgConfig)

pkg_check_modules(RSVG REQUIRED librsvg-2.0)

include_directories(${RSVG_INCLUDE_DIRS})


#soci library 
find_library(soci_core soci_core)