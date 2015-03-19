urls
pathWith: aStringOrSymbol
	"Return a absolute url of the full path
	up to the current position
	with <aStringOrSymbol> appended, separated
	with /-characters, like this:

	/aba/dabba/<aStringOrSymbol>"

	| path part |
	path := stream contents.	
	^String streamContents: [:s |
		1 to: stream position do: [:i |
			part := path at: i.
			part isEmptyOrNil ifFalse: [
				s nextPut: $/; nextPutAll: part]].
		s nextPut: $/; nextPutAll: aStringOrSymbol]