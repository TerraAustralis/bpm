render
renderIntroductionOn: html 

	| procs |
	procs := self currentUser processes size.
	html paragraph: 'Create a case by entering details and press the button. ', ((procs > 1) ifTrue: [' Since you have access to ', procs asString, ' processes you first choose in the drop down menu which one to create the case in. Different processes use different creation forms.'] ifFalse: [''])