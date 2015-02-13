objects
findObjectById: anId
	"Find any object by id. Return nil if not found."

	^objects readUnique: #id at: anId