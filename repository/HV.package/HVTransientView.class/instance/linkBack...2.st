deprecated
linkBack: text
	"Return a local back link to the default page."

	self deprecated: 'Deprecated, use getLink* and link* methods in HVHtmlBuilder instead.'.
	^self link: self defaultUrl text: text