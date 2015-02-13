as yet unclassified
styleForStage: stage
	| styles |
	styles := OrderedCollection new.
	stage == model stage ifTrue: [ 
		styles 
			add: #peripheries -> 2;
			add: #color -> #red ].
	^styles