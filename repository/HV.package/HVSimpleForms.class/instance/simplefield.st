urls
simplefield
	"This method is called when accessing http://localhost/hello.
	It is first called with a GET thus building the form with an empty
	text field and showing it. The #postForm defaults to an POST url
	pointing to this method again. So when the user press submit
	we end up here again and the form is built the second time.
	This time around the builder object sees that there is a value
	for the textfield and puts that into the HVHtmlInputText instance -
	this happens when the widget is created using the #inputText method,
	so that we can get it by sending #value to it later in the method."

	| builder field button |
	builder := self builder.
	builder start; h1: 'Howdy!'.
	builder p: 'What is your name?'.
	builder postForm.
	field := builder inputText.
	button := builder submit.
	builder endForm.
	builder p: 'Your name is ', (button ifPressed: [field value] ifNot:['unknown!']), '!'.
	builder hr; srcLink; end.
	^builder