private
url: url string: string
	"Make a link."

	^'<a href="', url, '">', string,'</a>'