initialize-release
initializeWith: aParent 
	aParent ifNotNil: 
			[parent := aParent.
			request ifNil: 
					[request := parent request.
					urlStream := parent urlStream.
					urlStream ifNotNil: [urlOriginalPosition := urlStream position]].
			aParent response ifNotNil: [response := aParent response]].
	self postInitialize