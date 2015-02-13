testing
ifGemStone: aBlock

	"platform-specific branching"
	
	self platformIsGemStone ifTrue: [ ^ aBlock value ]