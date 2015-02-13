as yet unclassified
initialize
	| validation |
	validation := model validateTransitions.
	availableTransitions := validation availableTransitions.
	unAvailableTransitions := validation unAvailableTransitions.
	super initialize