as yet unclassified
default

	"GraphViz defaultGeneratorClass"

	^ OSProcessGraphVizGenerator isOSProcessLoaded
		ifTrue: [ self generatorClassFromName:	('OSProcess', self platform , 'GraphVizGenerator')  asSymbol]
		ifFalse: [ self generatorClassFromName: ( self platform , 'GraphVizGenerator')  asSymbol].