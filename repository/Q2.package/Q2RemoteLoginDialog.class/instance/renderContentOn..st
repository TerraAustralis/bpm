as yet unclassified
renderContentOn: html
	| showLogin mirrorText |
	html heading: label.
	showLogin _ true.
	mirrorText _ self noDb ifTrue: ['No mirror is installed locally. '] ifFalse: ['A mirror is already installed locally. '].
	html paragraph: [
		Q2Object pingServer
			ifTrue: [html text: mirrorText, 'The server is available online, login below to download a mirror.']
			ifFalse: [showLogin _ false. html text: mirrorText, 'The server is not available online for mirror downloads.']].
	showLogin ifTrue: [
		html form: [
			html table: [
				html tableRow:[
					html tableData class: 'label'; with: 'Username:'.
					html tableData: [html textInput value: username; callback: [:v | username _ v]]].
				html tableRow: [
					html tableData class: 'label'; with: 'Password:'.
					html tableData: [html passwordInput callback: [:v | password _ v]].
				html tableRow attributeAt: #align put: #center.
				html tableData colSpan: 2; with: [html submitButton on: #login of: self]]
			]
		].
		self renderMsgOn: html]