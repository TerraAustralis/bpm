urls
back: x with: aStringOrSymbol
	"Return a absolute url of the rest of the path
	with <aStringOrSymbol> appended, separated
	with /-characters, like this:

	/dabba/<aStringOrSymbol>"

	| part here |	
	^String streamContents: [:s |
		here := stream position.
		self back: x.
		[stream atEnd] whileFalse: [
			part := stream next.
			part ifNotNil: [
				s nextPut: $/; nextPutAll: part]].
		stream position: here.
		s nextPut: $/; nextPutAll: aStringOrSymbol]