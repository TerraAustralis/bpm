as yet unclassified
saveNewItem: formBuffer 
	| newSub |
	newSub := self newObjectNamed: (formBuffer value at: #name ifAbsent: formBuffer target name).
	formBuffer target: newSub.
	formBuffer flush.
	self addSubscription: newSub.
	^newSub