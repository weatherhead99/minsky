set(wtsrcs canvasView.cc mainMenu.cc minskyApp.cc propertiesDlg.cc toolbarBase.cc mainWindow.cc minskyDoc.cc server-main.cc
	    remoteClipBoard.cc abstractView.cc viewManager.cc mainToolbar.cc fileLoader.cc dialog.cc fileOpenDlg.cc cairoWidget.cc
	    displaySettings.cc canvasPainter.cc abstractCanvasItem.cc linkCanvasItem.cc operationCanvasItem.cc plotCanvasItem.cc 
	    godleyCanvasItem.cc tempCairoImageFile.cc scrollBarArea.cc variablePropertiesDlg.cc constantPropertiesDlg.cc operationPropertiesDlg.cc
	    integralPropertiesDlg.cc godleyTableDlg.cc godleyTableWidget.cc variableCanvasItem.cc groupCanvasItem.cc wtGeometry.cc
	    linkCanvasOverlay.cc sliderWidget.cc rectSelectionOverlay.cc wireCreateOverlay.cc deleteItemsOverlay.cc globalPreferencesPropDlg.cc
	    globalPreferences.cc disablingOverlay.cc plotDlg.cc)
	 
	 
add_library(guilibwt ${wtsrcs})