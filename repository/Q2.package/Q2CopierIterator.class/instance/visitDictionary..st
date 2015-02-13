visiting
visitDictionary: aDictionary

	aDictionary associationsDo: [ :object |
		(self shouldAdd: object value) ifTrue: [
			| announcement |
			announcement := (Q2NextElement with: object).
			(visitedObjects includes: object)
				ifTrue: [ self announcer announce: announcement ]
				ifFalse: [
					stack add: object.
					announcementStack add: announcement ] ] ]