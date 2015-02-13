users
findPersonByEmail: email
	"Find the person with that email, also check secondary email.
	Return nil if not found."

	^(persons readUnique: #email at: email)
		 ifNil: [persons readUnique: #email2 at: email]