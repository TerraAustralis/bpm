rendering
updateMessageOn: html 

	self controller message isString not ifTrue:[ ^'' ].
	self controller message ifNotNilDo: [ :m | html html: m ].
	self controller message: nil.