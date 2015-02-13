as yet unclassified
addAccessLevelsFor: perm fullName: pn
	(perm accessLevels) keysAndValuesDo: [:k :v |
		((v > (Q2Permission none)) or: [self allowedToSeeAll]) ifTrue:
		[
			"Point the permission to the category according to the accessLevel"
			graph add: (pn -> k name) with: #color -> (self colorFor: v)
		]]. 
	currentProcess categories do: [:cat |
		perm accessLevels at: cat name ifAbsent: [
			(perm defaultLevel >= (model getAccessLevelFor: cat in: currentProcess)) ifTrue: [
				graph add: (pn -> (self clean: cat name)) with: {#color -> (self colorFor: perm defaultLevel). #style->#dashed}
			]
		]
	]