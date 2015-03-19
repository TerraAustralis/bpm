deprecated
createSelectWidget: objects selected: selected name: name withIds: withIds
	"Create a select widget for forms."

	| obj id |
	self deprecated: 'Deprecated, use select* methods in HVHtmlBuilder instead.'.
	^String streamContents: [:stream |
		stream nextPutAll: '<select name="', name, '" size="1">'.
		1 to: objects size do: [:n |
			obj := objects at: n.
			withIds ifTrue:[ id := obj id] ifFalse:[ id := n].
			(id = selected)
				ifTrue: [ stream nextPutAll: '<option selected']
				ifFalse: [ stream nextPutAll: '<option' ].
			withIds
				ifTrue: [stream nextPutAll: ' value="', id fullPrintString, '">']
				ifFalse: [stream nextPut: $> ].
			stream nextPutAll: obj name; nextPutAll: '</option>'.
		].
		stream nextPutAll: '</select>']