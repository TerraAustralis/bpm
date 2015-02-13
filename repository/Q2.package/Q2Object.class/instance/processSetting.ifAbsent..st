settings
processSetting: aSymbol ifAbsent: aBlock
	"Return the value of the given process setting."

	^self process settingAt: aSymbol ifAbsent: aBlock