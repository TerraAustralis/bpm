triggering
getTriggeredFrom: userCollection
	"Collect all subscriptions I trigger given a collection of users."

	| triggered |
	triggered := OrderedCollection new.
	userCollection do: [:user |
		triggered addAll: (user unwrapped triggeredSubscriptions: self)].
	^triggered