as yet unclassified
initialize

	"self initialize"

	self initializeForms.
	EditForm := Q2StaticForm named: 'Subscription'.
	EditForm newText label: 'Subscription name'; withSelector: #name; description: 'The name of the subscription.'.
	EditForm newSelection label: 'Filter'; withSelector: #filter; description: 'Select one of your filters.'.
	EditForm newSelection multiple: true; label: 'Processes'; withSelector: #processes; description: 'All processes available for this user.'.
	EditForm newSelection multiple: true; label: 'Subscribed events'; withSelector: #eventClasses; description: 'All events subscribed to in this subscription.'.
	EditForm newBoolean label: 'Immediate notification'; withSelector: #overrideDigest; description: 'When triggered, this subscription will generate an mail immediately disregarding user digest setting.'