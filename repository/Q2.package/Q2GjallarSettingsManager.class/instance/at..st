accessing
at: aKey
	"Return the value of the given setting from the globals section.
	The settings are regularly polled from an ini-file on disk."

	^self at: aKey section: 'globals' ifAbsent: [
		^self atAnySection: aKey]