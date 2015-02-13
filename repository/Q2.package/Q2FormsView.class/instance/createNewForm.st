as yet unclassified
createNewForm
	| answer |
	answer := self call: (Q2FormConstructor new editForm: Q2Form new; yourself ).
	answer ifNotNil: [
		| fieldBuffers |
		" generating collection of field->formbuffer values from field->formeditor "
		fieldBuffers := answer fields collect: [ :each | each key -> each value model].

		self model addForm: answer editor model fields: fieldBuffers to: formsModel.
	]