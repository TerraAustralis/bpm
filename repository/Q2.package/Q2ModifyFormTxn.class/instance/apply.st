as yet unclassified
apply
	"a form = nil indicates that new form was added to formOwner "
	form ifNil: [
		form := Q2Form new.
		formBuffer target: form.
		formOwner forms add: form.
	].
	self noteOldKeysFor: formBuffer target.
	formBuffer flush.

	"renew all fields in form"
	[form fields isEmpty] whileFalse: [ form fields removeLast ].
	fieldBuffers do: [:each | 
		each value target: each key. 
		self noteOldKeysFor: each key.
		each value flush. form fields add: each key ].