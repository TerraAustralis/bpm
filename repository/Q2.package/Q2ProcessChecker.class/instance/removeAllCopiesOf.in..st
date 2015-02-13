collection-utility
removeAllCopiesOf: anObject in: aCollection 
	"This one belongs into Collection and is there in category *network-Mail-Reader-Spam so I can't automatically include it into my mcz Yuck!"

	(aCollection occurrencesOf: anObject) 
		timesRepeat: [aCollection remove: anObject]