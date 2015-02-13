private
resolveLink: aString
	"Resolve the link. Text before an optional '|' is used as the visible string.
	If it is an image url which is then embedded the text before '|' is
	resolved to a link for the image."

	|  parts uurl rooted u string |
	parts := aString findTokens: '|'.
	parts size = 1
		ifTrue:[u := string := aString]
		ifFalse: [u := parts at: 2. string := parts at: 1].
	self extractCodeFrom: u block: [:urlArg :class | | url |
		url := modelProvider model urlForLink: urlArg.
		uurl := url asUppercase.
		rooted := self isStringRooted: uurl.
		url := rooted ifFalse: [base, '/', url] ifTrue: [url].
		(rooted not and: [self isStringFlash: uurl])
			ifTrue: [
				(parts size = 1)
					ifFalse:[^self localFlashURL: url string: string]
					ifTrue: [^self localFlashURL: url string: nil].
				].
		(self isStringAnImage: uurl) 
			ifTrue: ["Looks like an image URL"
				(parts size = 1)
					ifFalse:[^self imageURL: url string: (self urlForString: string) class: class]
					ifTrue: [^self imageURL: url string: nil class: class].
				]
			ifFalse: [
				^self url: url string: string.
				].
		].