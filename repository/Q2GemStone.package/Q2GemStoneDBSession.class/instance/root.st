gemstone
root
	| root |
	"should we wrap this with commit?"
	(UserGlobals includesKey: #Q2Root) 
		ifTrue: [root := UserGlobals at: #Q2Root]
		ifFalse: [root := nil].
	^root