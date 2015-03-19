utilities
handleUpload: aBlock 
	| fileName stream |
	request isPostMultipart 
		ifTrue: 
			[request multipartFormFieldsDo: 
					[:chunk | 
					chunk fileName isEmptyOrNil 
						ifFalse: 
							[fileName := (chunk fileName findTokens: ':/\') last.
							stream := aBlock value: fileName.
							stream ifNotNil: [[chunk saveToStream: stream] ensure: [stream close]]]]]