as yet unclassified
printOn: stream
	stream nextPut: $[.
	path do: [:each |
		each printOn: stream.
		stream nextPut: Character space ].
	stream 
		nextPut: $];
		nextPut: Character space.
	object printOn: stream.