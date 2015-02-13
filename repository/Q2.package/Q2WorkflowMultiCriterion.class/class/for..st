instance creation
for: aCollection

	| c |
	c _ self new.
	aCollection do: [:each | c addCriterion: each].
	^c