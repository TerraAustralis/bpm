urls
fullPath
	"Return an absolute url of the full path
	separated with /-characters, like this:

	/aba/dabba"

	| path |
	path := url path.	
	^String streamContents: [:s |
		path do: [:part |
			part isEmpty ifFalse: [
				s nextPut: $/; nextPutAll: part]]]