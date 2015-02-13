as yet unclassified
initialize
	"We override initialize to avoid currentUser (there are no users yet!).
	It is instead set in postDo."

	id := Q2NewUUID signal.
	timestampCreated := Q2NewPointInTime signal.
	objects := OrderedCollection new.
	parentTxn := Q2CurrentTxn signal.