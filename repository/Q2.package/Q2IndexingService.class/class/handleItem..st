as yet unclassified
handleItem: anObject
	" Currently 'anObject' can only be a Case."

	Q2Log debug: 'Adding ', anObject asString, ' to index'.
	Q2SwishEWrapper new 
		index: (String streamContents: 
			[:stream | anObject textToIndexOn: stream]) utf8ToIndexCompatible
		with: anObject id asString
		appendTo: anObject process indexFullFileName