roles
reporter: aUser 
	"Only one user can be reporter."

	aUser ifNotNil: [
		reporter := self process wrappedUser: aUser.
		self replaceUser: reporter as: self reporterRole]