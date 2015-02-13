private
externalURL: url string: string
	"Make a non-local link."

	^'<a href="', url, '">', string,'</a>'