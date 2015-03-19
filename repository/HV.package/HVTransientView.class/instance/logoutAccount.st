accounts
logoutAccount
	"Tell the account that it is being logged out.
	Clear out the account attribute in the session.
	Return true if all succeded."

	self currentAccount ifNil: [^true].
	(self currentAccount respondsTo: #logout) ifTrue: [
		self currentAccount logout].
	KomSession current attributes removeKey: #account ifAbsent: [^false].
	^true