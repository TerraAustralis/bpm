roles
setResponsible: aUser 
	"This is used by the system, no error checking."

	| user |
	aUser ifNotNil: [
		user := self process wrappedUser: aUser.
		(responsible ~= user) ifTrue: [responsible := user].
		self replaceUser: user as: self responsibleRole]