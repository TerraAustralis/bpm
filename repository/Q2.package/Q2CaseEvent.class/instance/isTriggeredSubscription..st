events
isTriggeredSubscription: subs 
	"Check that the type is correct"

	^(super isTriggeredSubscription: subs) and: 
		[(subs filter isNil) or: [subs filter evaluate: self case]]