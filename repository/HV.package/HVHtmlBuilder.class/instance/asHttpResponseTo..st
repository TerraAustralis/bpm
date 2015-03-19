comanche
asHttpResponseTo: req
	"We implement this so that a builder can be returned as a
	result from a method rather than a HTML String.
	This also enables nestling of builders in order to compose
	pages by calling other 'submethods'."

	response ifNil: [
		response := (HttpResponse fromString: self render)
			fieldAt: 'Pragma' put: 'no-cache';
			fieldAt: 'Cache-Control' put: 'no-cache'].
	^response