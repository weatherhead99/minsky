cmake_minimum_required(VERSION 3.0)
project(minsky)


include(dependencies.cmake)


set(CMAKE_CXX_STANDARD 11)
#TODO: fix some of these definitions!
add_definitions(-DTR1 -DCAIRO -DTK -DGNUSL)
add_definitions(-DCMAKE_BUILD)



#TODO: REMOVE MANUAL ECOLABs
set(ECOLAB_DIR "/home/danw/Software/ecolab/")
set(ECOLAB_INCDIR ${ECOLAB_DIR}/include)
include_directories(${ECOLAB_INCDIR})

set(CLASSDESC_BINDIR ${ECOLAB_DIR}/build/classdesc/)

list(APPEND CMAKE_PROGRAM_PATH ${CLASSDESC_BINDIR})

include(${ECOLAB_DIR}/classdesc/classdesc.cmake)

set(CLASSDESC_INC ${ECOLAB_DIR}classdesc/)
message(STATUS "CLASSDESC_INC: ${CLASSDESC_INC}")

find_library(libecolab ecolab "${ECOLAB_DIR}/build/src/")
find_library(libxdrpack xdr_pack "${ECOLAB_DIR}/build/classdesc/")
message(STATUS "ecolab lib: ${libecolab}")

add_definitions(-DECOLAB_LIB="${libecolab}")


#ENDTODO


#generate ecolab classdesc files 
set(ECOLAB_XCDS plot.xcd)
foreach(xcd ${ECOLAB_XCDS})
classdesc_xcd(${xcd} ${ECOLAB_INCDIR} ${CMAKE_SOURCE_DIR})
get_filename_component(absxcd ${xcd} PATH)
endforeach()


set(ECOLAB_CDS)
foreach(cd ${ECOLAB_CDS})
classdesc_xcd(${cd} ${ECOLAB_INCDIR} ${CMAKE_SOURCE_DIR})
endforeach()

add_library(ecolab_classdesc_files OBJECT ${ECOLAB_CDS} ${ECOLAB_XCDS})


include_directories(${CMAKE_SOURCE_DIR})
include_directories(${CMAKE_BINARY_DIR})
#classdesc_generate_cd(${CMAKE_SOURCE_DIR}/intrusiveMap.h)

include_directories(schema engine GUI)

add_subdirectory(schema)
add_subdirectory(server)
add_subdirectory(engine)
add_subdirectory(GUI)
add_subdirectory(gui-wt)


add_executable(minsky ./tclmain.cc $<TARGET_OBJECTS:engine> $<TARGET_OBJECTS:schema> $<TARGET_OBJECTS:guilib>)

target_link_libraries(minsky ${TCL_LIBRARY} ${TK_LIBRARY} ${Boost_LIBRARIES} ${libecolab} ${libxdrpack} ${Tktable} ${RSVG_LIBRARIES} json_spirit cairo gsl gslcblas)