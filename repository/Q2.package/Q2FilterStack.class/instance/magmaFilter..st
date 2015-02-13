filtering
magmaFilter: aMagmaCollection
	"Apply filters in a sequential conjunction and combine it with the free text hits.
	Note that #compiledBlock will also combine with free text hits."

	filters ifEmpty: [
		"Ok, no filtering at all - let's take them in a default sort order"
		freetextFilter freetext ifEmpty: [ ^aMagmaCollection read: #createdSeconds ].
		"Otherwise we query using index and values from free text hits found earlier"
		^aMagmaCollection where: [:each | each id includesAnyOf: freetextIds]
							orSelect: [:each | each id includesAnyOf: freetextIds]

	].
	^aMagmaCollection where: self compiledBlock orSelect: [ :ea | true ]