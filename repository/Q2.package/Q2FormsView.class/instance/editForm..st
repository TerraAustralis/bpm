as yet unclassified
editForm: aForm
	| answer |
	answer := self call: ((Q2FormConstructor parent: self) editForm: aForm ).

	"answer not nil indicates that user submitted modifications"
	answer ifNotNil: [
		| fieldBuffers |
		" generating collection of field->formbuffer values from field->formeditor "
		fieldBuffers := answer fields collect: [ :each | each key -> each value model].

		self model modifyForm: aForm formBuffer: answer editor model fields: fieldBuffers  owner: formsModel.
	]