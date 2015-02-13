render
renderContentOn: html

	self checkAndRenderIntroductionOn: html.
	table rows: self historyItems.
	html render: table