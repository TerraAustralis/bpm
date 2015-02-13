accessing
useIndexing
"	Q2Platform ifGemStone: [^false ]."
	^useIndexing ifNil: [ Q2Object settings useIndexing]