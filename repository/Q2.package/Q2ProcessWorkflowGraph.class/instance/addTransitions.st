as yet unclassified
addTransitions
	model workflow transitionsDo: [:each | | style |
		style := Dictionary new.
		style at: #label put: each name utf8ToIso.
		style at: #q2id put: each id printString.
 
		graph 
			add: each from name utf8ToIso -> each to name utf8ToIso
			with: style associations, (self styleForTransition: each)
		]