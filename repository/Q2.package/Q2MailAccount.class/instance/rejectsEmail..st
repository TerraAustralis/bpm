messages
rejectsEmail: aPopMailItem
	"Do we reject it?
	Currently we just reject blacklisted senders, like 'postmaster'."

	| test |
	blacklistedSenders ifNil: [^false].
	test := blacklistedSenders anySatisfy: [:pattern | pattern match: aPopMailItem from].
	test ifTrue: [Q2Log warn: 'Rejected email from blacklisted sender: ', aPopMailItem from, ' subject: ', aPopMailItem subject].
	^test