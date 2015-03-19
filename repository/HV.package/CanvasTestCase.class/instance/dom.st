accessing
dom
	^ dom ifNil:
		[dom := XMLDOMParser parseDocumentFrom: canvas render readStream]