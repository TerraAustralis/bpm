accessing
outputFileDirectory

	| fileDirectory |
	fileDirectory _ FileDirectory on: self outputPath.
	fileDirectory assureExistence.
	
	^ fileDirectory