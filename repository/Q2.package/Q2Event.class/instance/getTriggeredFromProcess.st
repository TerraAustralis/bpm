triggering
getTriggeredFromProcess
	| primary triggered user |
	primary := self primaryObject.
	triggered := OrderedCollection new.
	self users isEmptyOrNil ifTrue: [
		(primary process subscriptionsFor: self class) do: [:sub | 
			user := sub user unwrapped. 
			((user canRead: primary) and: [self isTriggeredSubscription: sub])
			ifTrue: [
				triggered add: sub
			]
		]
	].
	"Add subs from process subscription"
	triggered addAll: (self process subscriptionsFor: self).
	^triggered