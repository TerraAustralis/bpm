urls
autosubmit

	| builder field button |
	builder := self builder.
	builder start; h1: 'Howdy!'.
	builder p: 'What is your name?'.
	builder postForm.
	field := builder selectObjectsFirstSelected: #(Hej Hejsan) .
	field autoSubmit: true.
	button := builder submit.
	builder endForm.
	builder p: 'You selected ', field value asString, '!'.
	builder hr; srcLink; end.
	^builder