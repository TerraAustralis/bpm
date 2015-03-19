accessing
doPrintHtmlOn: stream
	"Render the radio group as HTML."

	| current |
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
		(vertical & (n>1)) ifTrue: [stream nextPutAll: '<br />'].
		stream nextPutAll: '<input type="radio" name="', name, '" value="'.
		values
			ifNil: [n printOn: stream]
			ifNotNil: [stream nextPutAll: (values at: n) asString].
		(current = value)
			ifTrue: [stream nextPutAll: '" checked>']
			ifFalse: [stream nextPutAll: '" >' ].
		stream nextPutAll: (labels at: n).
		stream nextPutAll: '</input>'.
	]