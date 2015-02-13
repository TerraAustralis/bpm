roles
isRoleTaken: aRole
	"Return true if it is already taken and the role is singular."

	^aRole isSingular and: [roles anySatisfy: [:ass | ass value = aRole]]