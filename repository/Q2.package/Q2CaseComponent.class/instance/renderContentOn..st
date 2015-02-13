render
renderContentOn: html 
	"View an existing case."

	super renderContentOn: html.
	html render: editor.
	self renderMiddleAreaOn: html.
	html render: alarmview.
	html render: noteview