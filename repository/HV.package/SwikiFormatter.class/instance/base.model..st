accessing
base: anUrl model: aModel

	renderParagraphs := true.
	base := anUrl.
	model := aModel.
	macroProcessor := MacroProcessor model: self between: '<%' and: '%>'.
	macroProcessor deep: false