services
correctFrom: start to: stop with: aString
	"Make a correction in the code."

	| loc |
	aString = '#insert period' ifTrue:
		[loc := start.
		[(loc := loc-1)>0 and: [(code at: loc) isSeparator]]
			whileTrue: [loc := loc-1].
		^ self correctFrom: loc+1 to: loc with: '.'].

	self selectInvisiblyFrom: start to: stop.
	self replaceSelectionWith: aString