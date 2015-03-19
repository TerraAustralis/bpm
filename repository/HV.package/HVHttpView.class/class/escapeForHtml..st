html
escapeForHtml: string
	"Replace a lot of characters so that the string
	is safe for verbatim inclusion in a HTML page,
	for example for editing in a textarea."

	| temp |
	(string isEmpty or: [string isNil]) ifTrue:[^string].
	temp := string copyReplaceAll: '&' with: '&amp;'.
	HtmlEntities keysAndValuesDo:
		[:entity :char |
		char = $& ifFalse:
			[temp := temp copyReplaceAll: char asString with: '&' , entity , ';']].
	^temp