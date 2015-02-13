gemstone
commit: aBlock
	| result |
"	self assert: (System inTransaction not)."
	self begin.
	result := aBlock value.
	self commit.
	^result