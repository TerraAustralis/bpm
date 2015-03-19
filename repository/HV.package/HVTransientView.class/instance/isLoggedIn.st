accounts
isLoggedIn
	"Check if the user is logged in."

	| session |
	session := KomSession current.
	^session ifNotNil: [session attributes includesKey: #account] ifNil: [false]