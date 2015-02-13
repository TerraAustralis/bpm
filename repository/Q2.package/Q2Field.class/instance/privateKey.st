accessing
privateKey
	"Either the field accessor has a key identifying field then we use that as the key
	or we use the name, or if that is empty we fall back on label
	and finally id."

	^  accessor keyOrBlockValue: [
		name
			ifNotEmpty: [name asSymbol]
			ifEmpty: [
				label
					ifNotNil: [label asSymbol]
					ifNil: [id]]]