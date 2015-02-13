transactions
increaseNesting
	nesting := nesting + 1.
	
	" in GemStone we can't use nested transactions "
	"nesting > 1 ifTrue: [ self halt ]. "