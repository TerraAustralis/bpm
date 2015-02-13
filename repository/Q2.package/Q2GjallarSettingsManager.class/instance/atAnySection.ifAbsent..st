accessing
atAnySection: aKey ifAbsent: aBlock
	"Return the value of the given setting.
	The settings are regularly polled from an ini-file on disk."

	^iniFile at: aKey ifAbsent: [
		self initializeMissingDefaultSettings.
		^iniFile at: aKey ifAbsent: aBlock]