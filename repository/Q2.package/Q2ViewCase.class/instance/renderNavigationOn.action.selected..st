render
renderNavigationOn: html action: aBlock selected: selected
	"Include me as a link with a label and tooltip."

	^self
		renderNavigationOn: html
		action: aBlock
		label: case processAndName
		description: (case tooltipOn: html)
		selected: selected