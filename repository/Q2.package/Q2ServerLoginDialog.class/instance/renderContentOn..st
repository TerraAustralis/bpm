render
renderContentOn: html
	html heading: 'Login'.
	html form: [
		html table: [
			html tableRow:[
				html tableData class: 'label'; with: 'Username:'.
				html tableData: [html textInput value: username; callback: [:v | username _ v ifNil: ['']]]].
			html tableRow: [
				html tableData class: 'label'; with: 'Password:'.
				html tableData: [html passwordInput callback: [:v | password _ v ifNil: ['']]]].
			html tableRow "attributeAt: #align put: #center;" with: [
				html tableData colSpan: 2; with: [html submitButton on: #login of: self]]
		]
	].
	self renderMsgOn: html.
	(Q2Object settings passwordReminder) ifTrue: [
		html div: [
			html anchor callback: [self call: Q2PasswordReminder new]; with: 'Forgot password?']]