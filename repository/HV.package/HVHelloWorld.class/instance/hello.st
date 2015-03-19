urls
hello
	"A slightly longer version using HVHtmlBuilder.
	This is how you normally build HTML pages:
		- Get the builder
		- Feed it with messages to create HTML
		- Return it to Comanche, it will then render the page."

	| builder |
	builder := self builder.
	builder start; h1: 'Hello world!'.
	builder p: 'It is a brand new day.'.
	builder hr; srcLink; end.
	^builder