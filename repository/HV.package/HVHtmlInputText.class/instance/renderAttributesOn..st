rendering
renderAttributesOn: stream
	"Add the size attribute."

	super renderAttributesOn: stream.
	stream nextPutAll: ' size="'.
	size printOn: stream.
	stream nextPut: $"