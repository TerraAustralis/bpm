visiting
visitIvarsOf: anObject

	1 to: anObject class instSize do: [ :i |
		| object |
		object := anObject instVarAt: i.
		(self shouldAdd: object) ifTrue: [
			| announcement |
			announcement := Q2NextIvar with: object at: i.
			(visitedObjects includes: object) 
				ifTrue: [ self announcer announce: announcement. ]
				ifFalse: [
					stack add: object.
					announcementStack add: announcement ] ] ]