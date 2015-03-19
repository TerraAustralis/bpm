html
divClass: aString
	"Start a div with a class."

	^document pushElement: (HVHtmlDiv class: aString)