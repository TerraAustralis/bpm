private
urlForString: string
	"Turn smart string into a URL."

	(self isStringRooted: string asUppercase)
		ifTrue: [^string]
		ifFalse: [^base, '/', (model urlForLink: string)]