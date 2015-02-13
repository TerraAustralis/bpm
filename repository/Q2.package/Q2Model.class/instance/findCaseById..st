cases
findCaseById: id
	"Find the case."

	^cases readUnique: #id at: id