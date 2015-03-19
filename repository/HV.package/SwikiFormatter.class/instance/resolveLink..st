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
	self extractCodeFrom: u block: [:url :class | | aurl |
		aurl := model urlForLink: url.
		uurl := aurl asUppercase.
		rooted := self isStringRooted: uurl.
		aurl := rooted ifFalse: [base, '/', aurl] ifTrue: [aurl].
		(rooted not and: [self isStringFlash: uurl])
			ifTrue: [(parts size = 1)
						ifFalse:[^self localFlashURL: aurl string: string]
						ifTrue: [^self localFlashURL: aurl string: nil]].
		(self isStringAnImage: uurl) ifTrue: ["Looks like an image URL"
			(parts size = 1)
				ifFalse:[^self imageURL: aurl string: (self urlForString: string) class: class]
				ifTrue: [^self imageURL: aurl string: nil class: class]]
		ifFalse: [^self url: aurl string: string]]