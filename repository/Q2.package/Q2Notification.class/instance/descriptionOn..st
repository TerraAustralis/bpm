events
descriptionOn: aStream
	events do: [:event |
		event longDescriptionOn: aStream.
		event linkOn: aStream.
		aStream cr; cr].
	^aStream