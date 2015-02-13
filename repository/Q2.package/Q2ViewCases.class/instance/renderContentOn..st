render
renderContentOn: html 
	"This is the default view of the user."

	super renderContentOn: html.
	html render: filterStackView.
	html horizontalRule.
	self renderTableOn: html