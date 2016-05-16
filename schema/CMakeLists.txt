set(SCHEMA_SRCS schema0.cc schema1.cc variableType.cc operationType.cc)

set(SCHEMA_XCDS schema0.xcd schema1.xcd)
set(SCHEMA_CDS variableType.cd schema1.cd)

add_library(schema OBJECT ${SCHEMA_XCDS} ${SCHEMA_CDS} ${SCHEMA_SRCS})
add_dependencies(schema ecolab_classdesc_files)
target_include_directories(schema PRIVATE ${CMAKE_CURRENT_BINARY_DIR})


foreach(xcd ${SCHEMA_XCDS})
classdesc_xcd(${xcd} ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR})
endforeach()

foreach(cd ${SCHEMA_CDS})
classdesc_cd(${cd} ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR})
endforeach()
