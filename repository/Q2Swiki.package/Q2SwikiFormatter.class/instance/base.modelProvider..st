accessing
base: anUrl modelProvider: aModelProvider

	renderParagraphs := true.
	base := anUrl.
	modelProvider := aModelProvider.
	macroProcessor := Q2MacroProcessor model: self between: '<%' and: '%>'.
	macroProcessor deep: false