methods
current
	"Note that this does not set the platform class variable."
	
	^CurrentPlatform ifNil: [
		self platformIsGemStone 
			ifTrue: [Q2GemStonePlatform]
			ifFalse: [Q2SqueakPlatform]
			]