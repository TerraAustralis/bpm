*q2-overwrite
allStylesCss
	"Collecting all scripts to one big string"

	^ String streamContents: [:s |
		self selectorsToInclude 
			select: [:each | (each ~= #allStylesCss) and: [each endsWith: #Css ] ] 
			thenDo: [:script | 
				s nextPutAll: (self perform: script); nextPut: $ 
			].
	]