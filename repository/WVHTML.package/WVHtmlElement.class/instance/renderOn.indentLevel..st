rendering
renderOn: html indentLevel: level
	html break.
	level timesRepeat: [html space].
	
	self renderOpenTagOn: html.
	self childrenDo: [:ea | ea renderOn: html indentLevel: level + 1].
	self shouldPrintCloseTag ifTrue:
		[self shouldIndentCloseTag ifTrue:
			[html break.
			level timesRepeat: [html space]].
		self renderCloseTagOn: html].