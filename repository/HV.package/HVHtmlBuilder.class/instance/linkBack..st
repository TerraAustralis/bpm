deprecated
linkBack: text
	"Add a link to the default page of this view."

	self deprecated: 'Use linkDefault: instead'.
	^self link: view defaultUrl text: text