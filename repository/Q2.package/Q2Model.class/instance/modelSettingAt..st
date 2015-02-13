settings
modelSettingAt: aSymbol
	^ modelSettings at: aSymbol ifAbsent: [ self error: 'unknown setting' ]