objects
findObjectById: id
	"Find any object by id. Return nil if not found."

	^objects readUnique: #id at: id