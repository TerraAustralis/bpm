as yet unclassified
renderMsgOn: html
	msg ifNotNil: [
		html div class: 'msg'; with: [html text: msg]]