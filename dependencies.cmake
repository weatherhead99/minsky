find_package(TCL REQUIRED VERSION 8.5)

find_package(Boost REQUIRED COMPONENTS system regex date_time program_options filesystem)

find_package(wxWidgets)
find_package(Wt) 


find_library(Tktable Tktable2.11)
message(STATUS "Tktable: ${Tktable}")


find_library(json_spirit json_spirit)
find_library(cairo cairo)

find_library(gsl gsl)
find_library(gslcblas gslcblas)

#WARNING: NOT CROSS PLATFORM
include(FindPkgConfig)

pkg_check_modules(RSVG REQUIRED librsvg-2.0)

include_directories(${RSVG_INCLUDE_DIRS})


#soci library 
find_library(soci_core soci_core)