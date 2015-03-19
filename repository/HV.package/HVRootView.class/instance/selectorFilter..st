accessing
selectorFilter: aBlock
	"Set the filter used in #allowedSelector:forView:.
	It should implement #value:value: with
	the selector and the view instance as arguments."

	selectorFilter := aBlock