urls
removeitem
	"Remove an item in the todolist. Here we pick out
	the index from the url with some low level methods in the HttpRequest
	object held in the instance variable req.
	When we are finished we do a redirect to the default page,
	which means that the web browser will reload the #default method in this view."

	| id removeItem |
	id := (request getFields at: 'id') asNumber.
	removeItem := model items at: id.
	model removeItem: removeItem.
	^ self redirectToDefault