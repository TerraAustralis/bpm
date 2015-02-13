processes
findOwnerProcessFor: aUniqueObject
	"Ask all processes."

	^self processes detect: [:each | each hasUniqueObject: aUniqueObject ] ifNone: [
		self processPrototypes detect: [:each | each hasUniqueObject: aUniqueObject ]
			ifNone: [nil]]