accounts
accountsLoggedIn
	"Return all accounts logged in now."

	| accounts account |
	accounts := OrderedCollection new.
	self rootView sessionsDo: [:session |
		account := session attributes at: #account ifAbsent: [nil].
		account ifNotNil: [accounts add: account]].
	^accounts