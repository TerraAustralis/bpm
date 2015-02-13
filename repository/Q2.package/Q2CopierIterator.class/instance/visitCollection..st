visiting
visitCollection: aCollection

	aCollection do: [ :object |
		(self shouldAdd: object) ifTrue: [
			| announcement |
			announcement := Q2NextElement with: object.
			(visitedObjects includes: object)
				ifTrue: [ self announcer announce: announcement ]
				ifFalse: [
					stack add: object.
					announcementStack add: announcement ] ] ]