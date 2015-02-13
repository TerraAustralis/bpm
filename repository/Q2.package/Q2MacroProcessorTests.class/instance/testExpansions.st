as yet unclassified
testExpansions

	|processor|
	processor := Q2MacroProcessor
					block: [:x | x size > 5
									ifTrue: ['(', x, 'size >5)']
									ifFalse: ['[', x, x, ']']]
					between: '[' and: ']'.
	self assert: (
		(processor process: 'yabba[dab] dabba[dooooo] and [wha[mmmit dammit]]')
		= 'yabba(dabdabsize >5) dabba(dooooosize >5) and (wha(mmmit dammitsize >5)size >5)').

	processor deep: false.
	self assert: (
		(processor process: 'yabba[dab] dabba[dooooo] and [wha[mmmit dammit]]')
		= 'yabba[dabdab] dabba(dooooosize >5) and (wha(mmmit dammitsize >5)size >5)').