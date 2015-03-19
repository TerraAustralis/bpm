initialize-release
initialize
	"Create the basic structure of a HTML document.
	Place the body element on top of the stack."

	html _ WVHtmlElement named: 'html'.
	head _ WVHtmlElement named: 'head'.
	body _ WVHtmlElement named: 'body'.
	html add: head.
	html add: body.
	stack _ OrderedCollection with: body