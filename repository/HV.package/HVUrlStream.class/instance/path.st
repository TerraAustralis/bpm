urls
path
	"Return an absolute url of the current path
	separated with /-characters, like this:

	/aba/dabba"

	| path part |
	path := url path.	
	^String streamContents: [:s |
		1 to: stream position - 1 do: [:i |
			part := path at: i.
			part isEmpty ifFalse: [
				s nextPut: $/; nextPutAll: part]]]