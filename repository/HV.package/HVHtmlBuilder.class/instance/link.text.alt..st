html-links
link: url text: anObject alt: alt
	"Add a HTML link, but use the alternative
	if url is nil or empty."

	^url isEmptyOrNil
		ifTrue: [alt]
		ifFalse: [self anchorWithUrl: url do: anObject]