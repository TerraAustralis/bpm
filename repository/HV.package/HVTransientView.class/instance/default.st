urls
default
	"This is the default method called on a HttpView if no other
	method is named in the url. It is the base page for the view.
	It should always be implemented. This is a simple test implementation."

	| b |
	b := self builder.
	b start; h1: 'View for model:'; p: model printString; end.
	^b