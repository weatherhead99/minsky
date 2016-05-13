cmake_minimum_required(VERSION 3.0)
project(minsky)


include(dependencies.cmake)


set(CMAKE_CXX_STANDARD 11)
#TODO: fix some of these definitions!
add_definitions(-DTR1 -DCAIRO -DTK )


#TODO: REMOVE MANUAL ECOLABs
set(ECOLAB_DIR "/home/danw/Software/ecolab/")
set(ECOLAB_INCDIR ${ECOLAB_DIR}/include)
include_directories(${ECOLAB_INCDIR})

set(CLASSDESC_BINDIR ${ECOLAB_DIR}/build/classdesc/)

list(APPEND CMAKE_PROGRAM_PATH ${CLASSDESC_BINDIR})

include(${ECOLAB_DIR}/classdesc/classdesc.cmake)

set(CLASSDESC_INC ${ECOLAB_DIR}classdesc/)
message(STATUS "CLASSDESC_INC: ${CLASSDESC_INC}")

#ENDTODO

include_directories(${CMAKE_SOURCE_DIR})
#classdesc_generate_cd(${CMAKE_SOURCE_DIR}/intrusiveMap.h)

include_directories(schema engine GUI)

add_subdirectory(schema)

add_subdirectory(engine)
