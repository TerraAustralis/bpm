login
loginFromCookie

	| cookie decoded check |
	self halt.
	cookie := self currentRequest cookies at: self cookieName ifAbsent: [^false].
	[decoded := (Base64MimeConverter mimeDecodeToChars: cookie readStream) contents.
	decoded := decoded subStrings: '/'.
	check := self hashForUsername: (decoded first).
	check = decoded second ifTrue: [
		self username: decoded first.
		^true].
	^false]
		on: Error
		do: [^false]