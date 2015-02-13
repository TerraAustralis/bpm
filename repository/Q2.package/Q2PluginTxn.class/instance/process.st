as yet unclassified
process
	" return nil, if our owner is model"
	^ (registryOwner = self model) ifTrue: [ nil ] ifFalse: [ registryOwner ]