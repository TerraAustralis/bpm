as yet unclassified
pop
	| any |
	self isEmpty ifTrue: [^nil].
	any := self anyOne.
	self remove: any.
	^any