as yet unclassified
addProcessCategories
	currentProcess categories do: [:c | | cn al |
		al := model getAccessLevelFor: c in: currentProcess.
		((al > (Q2Permission none)) or: [self allowedToSeeAll]) ifTrue:
		[
			graph add: (self clean: c name) with: #color -> (self colorFor: al)
		]
	]