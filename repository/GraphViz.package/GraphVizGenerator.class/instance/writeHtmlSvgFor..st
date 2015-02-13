generating
writeHtmlSvgFor: svgFile

	| fileName html |
	fileName _ self outputFileNameFor: #html.
	html _ FileStream forceNewFileNamed: fileName.
	[html nextPutAll: (self htmlSvgStringFor: svgFile)] ensure: [html close].

	^ fileName