instance creation
request: request view: view
	^ (self new)
		request: request;
		view: view;
		yourself.