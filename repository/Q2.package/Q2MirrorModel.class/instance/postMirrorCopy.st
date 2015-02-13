mirrors-obsolate
postMirrorCopy
	"This is a shallow copy. Use the mirror specification
	to copy its contents further."

	| oldTransactions newP aMirror |

	self flag: #q2MirroringTodo. " this is an obsolate method "

	self flag: #q2todo.
	aMirror := Q2CurrentMirror signal.
	prefix := aMirror prefix.
	caseCounter := Q2Counter new. "start from 1"
	administrators := administrators copy.

	"These are not used in mirrors so we just clean them"
	processPrototypes := OrderedCollection new.
	mirrors := OrderedCollection new.
	defaultModifyCaseForm := defaultCreateCaseForm := defaultTableCaseForm := nil.

	"We clear these and fill them back in per process thus
	purging unneeded global objects."
	self initializeUsersCollection.
	self initializePersonsCollection.
	definedCategories := OrderedCollection new.
	customObjectTypes := OrderedCollection new.
	forms := OrderedCollection new.
	self initializeCasesCollection.
	processes := OrderedCollection new.
	aMirror processes do: [:p |
		newP := p mirrorCopyFor: aMirror in: self.
		processes add: newP].

	"The users have now been copied, make sure we have the new administrators"
	administrators := administrators collect: [:u | self findUserNamed: u id].

	"And that they refer to the new processes"
	users do: [:u | u resolveProcessesIn: self].

	"Now we can make a partial copy of the mirror too"
	"mirror := aMirror mirrorCopyIn: self."

	oldTransactions := transactionLog.
	self initializeTransactionsCollection.

	oldTransactions do: [:txn |
		self flag: #q2todo. "fix this!"
		"(txn validInMirror: aMirror)
			ifTrue: ["transactionLog add: (txn copyReconnectIn: self)"]"].



	"Purge all other txns from local collections."