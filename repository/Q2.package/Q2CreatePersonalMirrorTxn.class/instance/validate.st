as yet unclassified
validate
	" There shouldn't be two mirrors with the same prefix "

	super validate.
	self model mirrors detect: [ :each | each prefix = mirrorDefinition prefix ] ifNone: [ ^self ].
	self error: 'Mirror definition with prefix: ', mirrorDefinition prefix, ' already exists.'