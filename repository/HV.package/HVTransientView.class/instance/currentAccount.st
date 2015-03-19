accounts
currentAccount
	"Get the account for the request."

	| session |
	session := KomSession current.
	^session ifNotNil: [session attributes at: #account ifAbsent: [nil]]