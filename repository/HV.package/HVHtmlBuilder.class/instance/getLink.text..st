html-links
getLink: url text: text
	"Return a HTML link."

	^'<a href="', url, '">', text, '</a>'