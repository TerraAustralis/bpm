as yet unclassified
initialize
	super initialize.
	renderBlock := [ :value :html |  html    ].
	sortBlock := [:a :b | 
		a 
			ifNil: [true] 
			ifNotNil: [b 
				ifNil: [false] 
				ifNotNil: [a <= b]]].

	formatBlock := [:x | 
		smallSize 	ifNil: [ x ] 
					ifNotNil: [ x displayString truncateWithElipsisTo: smallSize] 
	].