rendering
renderAttributesOn: stream
	"Render attributes."

	readonly ifNotNil: [stream nextPutAll: ' readonly'].
	disabled ifNotNil: [stream nextPutAll: ' disabled']