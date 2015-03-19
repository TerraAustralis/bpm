rendering
renderValueOn: stream
	"We use the id as the value instead."

	stream nextPutAll: ' value="', id asString, '" '.
	super renderValueOn: stream