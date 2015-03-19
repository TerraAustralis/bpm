urls
restWith: aStringOrSymbol
	"Return a absolute url of the rest of the path
	with <aStringOrSymbol> appended, separated
	with /-characters, like this:

	/dabba/<aStringOrSymbol>"

	| part here |	
	^String streamContents: [:s |
		here := stream position.
		[stream atEnd] whileFalse: [
			part := stream next.
			part isEmpty ifFalse: [
				s nextPut: $/; nextPutAll: part]].
		stream position: here.
		s nextPut: $/; nextPutAll: aStringOrSymbol]