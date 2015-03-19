urls
default
	"The shortest Hello World.
	This is the default method that is run in an HVHttpView
	when no other method has been named in the url.
	It can also be reached by it's name 'default'.
	String implements #asHttpResponseTo: so
	it will be converted to a proper HttpResponse just before being
	handed back to Comanche."

	^'Hello world!'