urls
megaform2
	"Exercising some forms stuff."

	| b button age years hidden lastAge pass pass2 radioGroup radio1 radio2 radio3 message |
	b := self builder.
	b start; h1: 'Megaform 2'; postForm.

	"Add a group of radio buttons working as checkboxes,
	The chain of radios need to be ended using endRadio.
	If value isn't given the first one is selected by default. Only one is
	allowed to be selected at any time. Apple will be true and Orange will
	be ignored and set to false. If all has used #inputRadio (without supplying a value)
	then Banana would have been true."
	radio1 := b html: 'Banana: '; inputRadio.
	radio2 := b html: radio1 value asString; br; html: 'Apple: '; inputRadioValue: true.
	radio3 := b html: radio2 value asString; br; html: 'Orange: '; inputRadioValue: true.
	b html: radio3 value asString; endRadio.

	"Add them as one widget, works like selectObjects:."
	radioGroup := b br; br; html: 'Select fruit:'; br; radioGroup: {'Banana'. 'Apple'. 'Orange'}.
	radioGroup vertical: true.
	b br; columns: 2.		

	"Add a input field for a number. A number field is a simple subclass of text field."
	age := b html: 'How old are you?'; colTab; inputNumber.

	"Add a input field for a number with a default value different than 0."
	years := b colTab; html: 'How old is Squeak?'; colTab; inputNumberValue: 9.
	b endColumns; br.

	"Add a hidden field, see below."
	hidden := b inputHidden.

	"Add a variable that we will fill a few lines down."
	message := b var.

	"Add a password."
	pass := b br; br; html: 'Password: '; inputPassword.
	pass2 := b br; html: 'Verify: '; inputPassword.

	(pass value isEmpty and: [pass2 value isEmpty]) ifFalse: [
		pass value = pass2 value
			ifTrue: [message value: '<b>Verified correctly!</b>']
			ifFalse: [message value: '<b>Verified incorrectly!</b>']].
	
	"Add two breaks and a submit button, end the form."
	button := b br; br; submit: 'Hit me'.
	b endForm.

	"Was the button pressed?"
	button ifPressed: [
		b p: 'You selected a ', radioGroup value, '!'.
		"Pick out the hidden field value, hidden fields hold Strings so we convert it to a number."
		lastAge := hidden value asNumber.

		"We stuff the entered age into the hidden field. This means that we will get
		it back on next post - thus we 'remember' the age by storing it in the page."
		hidden value: age value.
	].

	b p: 'You are ', age value printString, ' years old. Last time you entered ',
			lastAge printString, ' years.'.
	b p: 'Squeak is ', years value printString, ' years old.'.

	b hr; srcLink; end.
	^b