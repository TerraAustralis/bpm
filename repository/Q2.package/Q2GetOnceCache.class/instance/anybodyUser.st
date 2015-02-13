accessing
anybodyUser
  
	anybodyUser ifNil: [ self getOnce ].

	^ anybodyUser