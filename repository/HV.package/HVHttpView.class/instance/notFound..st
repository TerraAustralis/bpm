responses
notFound: url
	"Make a not found response."

	HVResponseNotification signal:
		(HttpService current errorResponseStatus: #notFound description: url)