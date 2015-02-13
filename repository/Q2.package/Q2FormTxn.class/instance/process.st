as yet unclassified
process
	" return nil, if our owner is model"
	^ (formOwner = self model) ifTrue: [ nil ] ifFalse: [ formOwner ]