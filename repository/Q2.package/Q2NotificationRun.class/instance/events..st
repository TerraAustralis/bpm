accessing
events: anObject
	events := anObject.
	"PlugIn subscriptions should be handled immediately"
	events do: [:e | e process ifNotNil: [e process notifyPlugIns: e]]