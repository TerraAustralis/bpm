cases
newCaseWithId: anId name: aString
	"Create a new foreign case, used when replaying txn."

	^self newCase setId: anId name: aString