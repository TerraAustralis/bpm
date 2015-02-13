*q2-overwrite
allScriptsJs
	"Collecting all scripts to one big string"

	^ String streamContents: [:s |
		self selectorsToInclude 
			select: [:each | (each ~= #allScriptsJs) and: [each endsWith: #Js ] ] 
			thenDo: [:script | 
				s nextPutAll: (self perform: script); nextPut: $ 
			].
	]