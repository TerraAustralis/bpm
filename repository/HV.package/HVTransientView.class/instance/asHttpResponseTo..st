comanche
asHttpResponseTo: aRequest 
	response := self response.
	currentCanvas ifNotNil: 
			[response contentType: currentCanvas class contentType.
			response contents: currentCanvas render readStream].
	^ response