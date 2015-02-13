as yet unclassified
showWindow
	window 
		ifNil: [self openAsMorph openInWorld]
		ifNotNil: [window activate]