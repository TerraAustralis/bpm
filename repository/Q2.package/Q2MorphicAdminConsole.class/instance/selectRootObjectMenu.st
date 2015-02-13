as yet unclassified
selectRootObjectMenu
	"I show a popup menu in which you can choose a rootObject.
	The list is generated dynamically."

	| choices c model |
	choices := OrderedCollection new.
	model := Q2Session current model.
	choices add: model.
	choices addAll: model processes.
	c := (PopUpMenu labelArray: (choices collect: [:each | each printString])) startUp.
	(c > 0) ifTrue: [self rootProxy: (Q2RootProxy on: (choices at: c))].