urls
megaform1
	"Exercising some forms stuff."

	| b button checkbox checkbox2 code result codeResult |
	b := self builder.
	b start; h1: 'Megaform'; postForm.

	"Add a checkbox, this box will either be unchecked for a normal GET
	or be checked if the user checks it and presses submit (a POST)."
	checkbox := b html: 'Is Squeak great?'; inputCheckbox.

	"Add a checkbox, this box will be checked per default.
	If the form shows a proped model for editing typically we pick the value
	from the model object."
	checkbox2 := b br; html: 'Does Java suck?'; inputCheckboxValue: true.

	"Add a textarea."
	code := b br; html: 'Enter some code:';br; textArea.

	"Add a paragraph."
	b p: 'Result of code:'.
	"Add a variable - it is simply a placeholder for some HTML."
	result := b var.
	
	"Add two breaks and a submit button, end the form."
	button := b br; br; submit: 'Hit me'.
	b endForm.

	"The values of the widgets can be both used and set even if this is not a POST.
	Check if checkbox2 is checked, it should be even on the first GET."
	checkbox2 value ifTrue: [checkbox2 suffix: 'Of course it does...'].

	"If there is no code, stuff some in there."
	code value isEmpty ifTrue: [code value: '3+4'].

	"Was the button pressed?"
	button ifPressed: [
		"If checkbox is checked we add some HTML as a prefix just before the checkbox.
		Note that the actual rendering of the page happens after this method has returned
		so we can manipulate the elements of the page at this point.
		The #error: method simply adds a suffix in red."
		checkbox value
			ifTrue: [checkbox prefix: ' You bet! ']
			ifFalse: [checkbox error: '<- Come on, check it!'].

		checkbox2 value
			ifTrue: [checkbox2 suffix: 'Right on!']
			ifFalse: [checkbox2 error: '<- Come on, check it!'].
	].
	b hr; srcLink; end.

	"Compile and execute the code. Note that I cobbled this together - I tried adding a bit
	of error handling etc. Not sure how to do this properly."
	codeResult := [Compiler evaluate: code value logged: false] on: Exception do: [:ex |
						ex class = InMidstOfFileinNotification
							ifTrue: [ex resume: true]
							ifFalse: [ex return: ex]].

	"As a proof that the page is not yet rendered - we can finally stuff in the result of the code
	into the variable we embedded into the page."
	result value: codeResult printString.
	^b