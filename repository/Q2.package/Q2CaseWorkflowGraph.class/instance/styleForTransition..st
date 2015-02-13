as yet unclassified
styleForTransition: transition
	| styles | 
	styles := OrderedCollection new.
	(availableTransitions includes: transition) ifTrue: [
		styles add: #color -> #green ].
	(unAvailableTransitions includes: transition) ifTrue: [
		styles add: #color -> #red ].
	^styles