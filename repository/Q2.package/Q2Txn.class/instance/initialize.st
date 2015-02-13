initialize-release
initialize
	id := Q2NewUUID signal.
	timestampCreated := Q2NewPointInTime signal.
	user := Q2Session current currentUser. " Q2CurrentUser signal. equiv: self context user"
	(user isKindOf: Q2User) ifFalse: [self halt].
	objects := OrderedCollection new.
	parentTxn := Q2CurrentTxn signal.