accessing
firstElement
	| dom |
	dom := XMLDOMParser parseDocumentFrom: self canvas contents readStream.
	^ dom elements first