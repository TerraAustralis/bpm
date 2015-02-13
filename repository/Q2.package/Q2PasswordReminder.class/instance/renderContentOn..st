as yet unclassified
renderContentOn: html
	html heading: 'Find account'.
	html form: [
		html labelOver: 'Enter your username: ' field: [:id |
			html textInput id: id; on: #userName of: self
		].
		html submitButton callback: [self sendPassword]; text: 'Search'
	]