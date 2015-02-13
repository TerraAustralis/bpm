accessing
outputPath

	^ outputPath ifNil: [(ServerFileDirectory default directoryNamed: #dot) pathName]