roles
userWithRole: aRole
	"Only return the first user found, or nil."

	roles do: [:ass | ass value = aRole ifTrue: [^ass key]].
	^nil