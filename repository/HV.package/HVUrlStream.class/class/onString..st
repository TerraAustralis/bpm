instance creation
onString: aUrlString
	"Return a stream on the url."

	^self new url: (Url absoluteFromText: aUrlString)