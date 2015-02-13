cookies
hashForUsername: aString 
	^(SecureHashAlgorithm new hashMessage: aString , self class securityCode)
		printStringBase: 32