comanche
process: request
	"Process the request. This is the method that is called by Comanche.
	Given the view we stick the request into it and let it take over.
	When the result is returned we turn it into a proper HttpResponse.
	A special notification can be signaled to return a specific response and
	bypassing the call chain."

	| view |
	(request url endsWith: '/favicon.ico') ifTrue: [
		^HttpResponse fromString: 'favicon.ico not supported'].
	view := self getTopView: request.
	view request: request. "normally not needed when using #viewFor: but here it is"
	[^view dispatch asHttpResponseTo: request]
		on: HVResponseNotification do: [:ex | ^ex response]