comanche
asHttpResponseTo: aRequest
	| response |
	response := view response.
	response contentType: self class contentType.
	response contents: stream contents readStream.
	^ response