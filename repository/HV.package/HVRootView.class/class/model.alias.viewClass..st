instance creation
model: aModel alias: anAlias viewClass: aViewClass
	"Create a persistent root view that can be plugged into Komanche."

	^(super on: aModel) alias: anAlias viewClass: aViewClass