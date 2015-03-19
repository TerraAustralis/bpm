initalize-release
defaultSelectorFilter
	"Override this method to supply your own selectorFilter.
	Or plug it in using #selectorFilter:"

	^[:selector :view |
		(view respondsTo: selector) and: [
			(self categoryOfElement: selector inClassOrSuperclass: view class) = #urls]]