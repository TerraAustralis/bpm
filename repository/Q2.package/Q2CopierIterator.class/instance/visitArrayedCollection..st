visiting
visitArrayedCollection: aCollection

	aCollection doWithIndex: [ :object :i |
		(self shouldAdd: object) ifTrue: [
			| announcement |
			announcement := (Q2NextIndexedElement with: object at: i).
			(visitedObjects includes: object)
				ifFalse: [
					stack add: object.
					announcementStack add: announcement ] 
				ifTrue: [ self announcer announce: announcement ] ] ]