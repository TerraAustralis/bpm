rendering-debug
renderCoordinatesOn: html
 
	'Origin: ', (graphFormOriginX printString, ',', graphFormOriginY printString) renderOn: html.

	' Point: ',  (graphFormClickX printString, ',', graphFormClickY printString) renderOn: html.