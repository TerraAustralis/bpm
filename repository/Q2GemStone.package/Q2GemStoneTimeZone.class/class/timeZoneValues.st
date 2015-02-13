methods
timeZoneValues
	"Here we just add the local time zone, until full time support is developed."
	| timeZoneStrings |
	timeZoneStrings := OrderedCollection new.
	timeZoneStrings add: (TimeZone fromGemPath: '/etc/localtime') standardPrintString.
	^timeZoneStrings sortBy: [:a :b | a < b ]