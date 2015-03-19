urls
pathWithPrefix: aStringOrSymbol
	"Return a relative url of the current path
	with <aStringOrSymbol> prepended to the current last
	path part. Path parts are separated with /-characters,
	like this:

	/aba/dabba/<aStringOrSymbol>yabba"

	| path lastPart |
	lastPart := self last.
	lastPart ifNotNil: [
		path := url path.	
		^String streamContents: [:s |
			1 to: stream position - 1 do: [:i |
				s nextPut: $/; nextPutAll: (path at: i)].
			s nextPut: $/; nextPutAll: aStringOrSymbol, lastPart]]