as yet unclassified
generatorClassFromName: className

	"GraphViz defaultGeneratorClass"

	"Use the specific concrete subclass for this platform if implemented"
	(Smalltalk hasClassNamed: className) ifTrue: [^ Smalltalk at: className].

	self notify: self platform, ' is is not yet supported for the GraphViz package'.
	^ nil