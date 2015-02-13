users
findUserOrPersonByEmail: email
	"Find the user with that email address, or a person,
	or create a person if there is none."

	| person |
	person := self findPersonByEmail: email.
	person
		ifNotNil: [^person user ifNil: [person]]
		ifNil: [^self createPerson: email]