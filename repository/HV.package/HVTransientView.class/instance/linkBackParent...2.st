deprecated
linkBackParent: text
	"Return a back link to the default page of the parent."

	self deprecated: 'Deprecated, use getLink* and link* methods in HVHtmlBuilder instead.'.
	^self link: parent defaultUrl text: text