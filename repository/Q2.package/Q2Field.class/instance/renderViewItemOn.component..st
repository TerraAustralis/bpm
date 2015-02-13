rendering
renderViewItemOn: html component: fc
	"By default we render a field the same if it is in a field list,
	but without the standard label etc."

	^self renderViewControlOn: html component: fc