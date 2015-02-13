creation
createXMLDocument

	| file parser xml |
	file _ self make: #dot.
	
	file _ self 
		do: [self launchDot2Gxl: file]
		blockUntilFileUpdated: (self outputFileNameFor: #xml)
		waitingNoMoreThan: self durationToWaitForGenerating.

	parser _ Smalltalk at: #XMLDOMParser ifAbsent: [nil].
	xml _ FileStream readOnlyFileNamed: file.
	^ [parser
		ifNil: [xml contents]
		ifNotNil: [parser parseDocumentFrom: xml]] ensure: [xml close. self cleanUpIntermediateFilesAsAppropriate]