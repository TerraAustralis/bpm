accessing
at: aKey section: aSectionName ifAbsent: aBlock
	"Return the value of the given setting.
	The settings are regularly polled from an ini-file on disk."

	^ iniFile section: aSectionName at: aKey ifAbsent: [
		self initializeMissingDefaultSettings.
		^iniFile section: aSectionName at: aKey ifAbsent: aBlock]