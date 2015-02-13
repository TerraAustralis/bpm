forms
addForm: aForm
	"If it is our modifyForm we want it to be first."
	
	^(self process notNil and: [aForm editForm = self modifyForm])
		ifTrue: [forms addFirst: aForm editForm]
		ifFalse: [forms add: aForm editForm]