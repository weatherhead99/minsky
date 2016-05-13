set(ENGINE_SRCS derivative.cc equations.cc evalGodley.cc evalOp.cc equationDisplay.cc flowCoef.cc godleyExport.cc latexMarkup.cc variableValue.cc)

add_library(engine OBJECT ${ENGINE_SRCS})
