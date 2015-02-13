events
mailSubject

	^String streamContents: [:str | 
		str nextPutAll: '[',self class settings systemName,'] '.
		events do:[:event | event descriptionOn: str]]