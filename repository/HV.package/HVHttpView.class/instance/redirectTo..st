responses
redirectTo: url
	"Make a redirection to another url."

	HVResponseNotification signal:
		(HttpResponse redirectTo: (url isEmpty ifTrue:['/'] ifFalse: [url]))