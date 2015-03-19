private
localURL: url string: string
	"Make a local URL."

	^'<a href="', base, '/', url, '">', string, '</a>'