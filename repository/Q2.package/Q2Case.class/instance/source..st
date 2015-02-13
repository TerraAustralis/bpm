roles
source: aPersonOrUser 
	"Only one person/user can be source."

	aPersonOrUser ifNotNil: [
		source := self process wrappedUser: aPersonOrUser.
		self replaceUser: source as: self sourceRole]