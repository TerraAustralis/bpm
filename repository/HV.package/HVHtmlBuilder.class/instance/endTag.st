variables
endTag
	"We assume that the last element on the stack is the correct one."

	^document popElement

	"^elements add: (HVHtmlEndtag for: elementStack removeLast)"