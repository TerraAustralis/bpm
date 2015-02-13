subscriptions
addSubscription: named to: aProcess for: anEvent
	"Add a plugin subscription to a process for a specific event."

	| subscription |
	subscription := Q2PlugInSubscription named: named.
	subscription plugIn: self.
	subscription process: aProcess.
	subscription addEvent: anEvent.
	aProcess addPlugInSubscription: subscription.
	self subscriptions add: subscription