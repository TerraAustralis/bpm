graph searching
isEveryCulDeSacAnEndstate
	"check if only endstates are source of no transition"

	| result transitionSources culDeSacs |
	result := true.
	transitionSources := (transitions  collect: [:each | each source]) 
				asSet asOrderedCollection.
	culDeSacs := (states reject: [:state | state isEndstage]) 
				asOrderedCollection.
	transitionSources do: [:src | culDeSacs remove: src ifAbsent: [nil]].
	result := culDeSacs isEmpty.
	result 
		ifFalse: 
			[errorList add: 'there''s no way back from states which are not end states'].
	^result