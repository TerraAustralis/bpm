as yet unclassified
tabBefore: aComp
	| before |
	before _ components first key.
	components do: [:ass |
		ass value == aComp ifTrue: [^before].
		before _ ass key]. 
	^before