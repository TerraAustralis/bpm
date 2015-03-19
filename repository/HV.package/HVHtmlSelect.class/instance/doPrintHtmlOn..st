accessing
doPrintHtmlOn: stream
	"Render the select as HTML."

	| current |
	stream nextPutAll: '<select name="', name, '" size="', size printString, '"'.
	autoSubmit ifTrue: [stream nextPutAll: ' onchange="this.form.submit();"'].
	stream nextPutAll: (multiple ifTrue: [' multiple>'] ifFalse: ['>']).
	labels := objects
				collect: [:obj |
					obj
						ifNil: [nilLabel]
						ifNotNil: [
							(obj isKindOf: String)
								ifTrue:[obj]
								ifFalse:[obj perform: labelSelector]]].
	1 to: objects size do: [:n |
		current := values ifNil: [objects at: n] ifNotNil: [values at: n].
		((multiple and: [value notNil])
			ifTrue: [value includes: current]
			ifFalse: [current = value])
				ifTrue: [stream nextPutAll: '<option selected="selected"']
				ifFalse: [stream nextPutAll: '<option' ].
		stream nextPutAll: ' value="'.
		values ifNil: [n printOn: stream] ifNotNil: [stream nextPutAll: (values at: n) asString].
		stream nextPutAll: '">'.
		stream nextPutAll: (labels at: n).
		stream nextPutAll: '</option>'.
	].
	stream nextPutAll: '</select>'