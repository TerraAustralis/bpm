cookies
cookieValueForUsername: aString 
	| hash | 
	hash := self hashForUsername: aString.
	^(Base64MimeConverter 
		mimeEncode: (aString , '/' , hash) 
				readStream) 
			contents