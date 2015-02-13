users
createPerson: email
	"Create a new person given an email. We pick the name
	to be everything before @."

	^self addPerson: (Q2Person new email: email; name: (email copyUpTo: $@))