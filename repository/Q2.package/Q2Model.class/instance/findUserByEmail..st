users
findUserByEmail: email
	"Find the user with that email address.
	We look up the person and get its user."

	| person |
	person := self findPersonByEmail: email.
	^person ifNotNil: [person user]