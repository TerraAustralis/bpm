sample
loadSimple
	"Load the model with a single Process prototype and
	one Process called 'Simple' from it. This is the out-of-the-box setup
	so that users can create cases from the start."

	| simple tor mimer simplePrototype |
	"At least two users to play with in addition to the system users."
	tor := self newUser: '_tor'.
	tor person email: 'tor@valhall.org'; firstName: 'Tor' lastName: 'Thunder'.
	mimer := self newUser: '_mimer'.
	mimer person email: 'mimer@valhall.org'; firstName: 'Mimer' lastName: 'Old'; email2: 'mimer2@valhall.org'.

	"Create the empty Process prototype"
	self newProcessPrototype: 'Empty prototype'.

	"Create the simple Process prototype"
	simplePrototype := self newProcessPrototype: 'Simple prototype'.
	simplePrototype loadSimple.

	"Create a Process from the simplest prototype and add two users, of which one is administrator."
	simple := self addProcess: (simplePrototype copyPrototype name: 'Simple').
	mimer addProcess: simple.
	simple addAdministrator: tor