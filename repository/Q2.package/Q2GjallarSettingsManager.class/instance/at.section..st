accessing
at: aKey section: aSectionName
	"Return the value of the given setting.
	The settings are regularly polled from an ini-file on disk."

	^self at: aKey section: aSectionName ifAbsent: [self error: 'Missing setting: ', aKey]