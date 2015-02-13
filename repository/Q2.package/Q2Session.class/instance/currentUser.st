accessing
currentUser 
	^(currentUser ifNil: [ self autoLogin ]) ifNil: [ self info anybodyUser ]