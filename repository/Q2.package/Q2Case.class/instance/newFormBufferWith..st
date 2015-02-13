forms
newFormBufferWith: aForm
	"Return a form buffer for editing or creating me.
	We compose a multivalue with form buffers for our forms."

	| multi |
	multi := Q2MultiFormValue new.
	(self hasForm: aForm) ifFalse: [multi add: (aForm newBufferFor: self)].
	forms do: [:form | (self readCheck: form) ifNotNil: [multi add: (form newBufferFor: self)]].
	^multi