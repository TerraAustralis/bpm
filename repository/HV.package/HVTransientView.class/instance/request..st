initialize-release
request: aRequest 
	request := aRequest.
	request ifNotNil: 
			[urlStream := HVUrlStream onString: request rawUrl.
			urlStream ifNotNil: [urlOriginalPosition := urlStream position]]