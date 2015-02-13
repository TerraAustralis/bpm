events
triggeredSubscriptions: anEvent
	"Given an event, return all my subscriptions that it triggers."

	| triggered |
	triggered := OrderedCollection new.
	(subscriptions notEmpty and: [self canRead: anEvent primaryObject]) ifTrue: [
		triggered := subscriptions select: [:each |
			each isTriggeredBy: anEvent forUser: self]
	].
	^triggered