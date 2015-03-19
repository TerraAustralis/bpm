forms
form
	| form |
	form := super form.
	form action: request url.
	self setNameOfForm: form.
	^ form