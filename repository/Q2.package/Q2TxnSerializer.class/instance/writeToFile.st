serialize-private
writeToFile	
	"If fileName is not nil, write the contents of the actualStream to a file and return self.
	Return with the contents of actualStream otherwise."	

	| fileStream |
	fileName ifNil: [ ^actualStream contents ].
	[ fileStream := (FileStream fileNamed: fileName).
	  fileStream	binary;
		nextPutAll: (actualStream contents) ] 
		ensure: [ fileStream ifNotNil: [ fileStream close ] ].