objects
addObjectById: aUniqueObject
	"Only add if not already there."

	(self findObjectById: aUniqueObject id) ifNil: [objects add: aUniqueObject].
	^aUniqueObject