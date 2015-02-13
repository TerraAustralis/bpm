requests
initialRequest: aRequest
	"Handle direct links with URL params."

	initialRequest := aRequest.
	self isLoggedIn ifTrue: [self handleInitialRequest]