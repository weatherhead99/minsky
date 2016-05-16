set(GUI_SRCS minskyTCL.cc minsky.cc godley.cc portManager.cc wire.cc variable.cc 
             variableManager.cc operation.cc plotWidget.cc cairoItems.cc
             SVGItem.cc equationDisplayItem.cc godleyIcon.cc groupIcon.cc inGroupTest.cc 
             opVarBaseAttributes.cc switchIcon.cc )
             
             
add_library(guilib OBJECT ${GUI_SRCS})


set_target_properties(guilib PROPERTIES POSITION_INDEPENDENT_CODE TRUE)

target_include_directories(guilib PRIVATE ${CMAKE_BINARY_DIR}/schema/)


message("tcl files: ${gui_tcl_files}")
message("xecolab files: ${xecolab_tcl_files}")

file(COPY library/ DESTINATION ${CMAKE_BINARY_DIR})
file(COPY icons DESTINATION ${CMAKE_BINARY_DIR})
file(COPY accountingRules DESTINATION ${CMAKE_BINARY_DIR})