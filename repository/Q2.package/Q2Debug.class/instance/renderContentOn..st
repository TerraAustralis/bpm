as yet unclassified
renderContentOn: html 

	html heading: label.

"	html div attributeAt: 'dojoType' put: 'Editor'; with: [
  		html heading: 'Dabba' level: 1.
		html text: 'adasdasd'].

	html form: [
		html text: 'Write master txns after: '.
		html textInput callback: [:n | self model writeTxnsAfter: n asNumber].
		html submitButton text: 'Write' ].
	html form: [
		html text: 'Write mirror txns after: '.
		html textInput callback: [:n | self model writeMirrorTxnsAfter: n asNumber].
		html submitButton text: 'Write'].
	html form: [
		html break.
		html submitButton text: 'Read master txns'; callback: [ self model readMasterTxns ]].
	html form: [
		html break.
		html submitButton text: 'Read mirror txns'; callback: [ self model readMirrorTxns ]]."
	html form: [
		html break.
		html select
						size: 10; 
						list: self model mirrors;
						selected: selectedMirror;
						callback: [ :value | selectedMirror := value ].
		html submitButton text: 'Build mirror'; callback: [ selectedMirror ifNotNil: [[selectedMirror build] fork]  ]
	]