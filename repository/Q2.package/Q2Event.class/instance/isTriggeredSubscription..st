triggering
isTriggeredSubscription: subs 
	"Check that the type is correct"

	^(subs eventClasses anySatisfy: [:each | each = self class]) and:
	[subs includesProcess: self process]