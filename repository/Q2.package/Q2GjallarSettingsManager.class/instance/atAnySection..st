accessing
atAnySection: aKey
	"Return the value of the given setting.
	The settings are regularly polled from an ini-file on disk."

	^self atAnySection: aKey ifAbsent: [self error: 'Missing setting: ', aKey]