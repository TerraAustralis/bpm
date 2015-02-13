persons
findPersonByEmail: email
	"Find the person with that email."

	^importedPersons detect: [:person | person unwrapped email = email] ifNone: [
		importedPersons detect: [:person | person unwrapped email2 = email] ifNone: [nil]]