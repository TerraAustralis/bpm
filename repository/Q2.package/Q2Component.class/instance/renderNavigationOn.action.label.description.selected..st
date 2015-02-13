render
renderNavigationOn: html action: aBlock label: aLabel description: aDescription selected: selected
	"Include me as a link with a label and tooltip."

	| anchor |
	anchor := html anchor tooltip: aDescription.
	self == selected ifTrue: [anchor id: #'option-selected'].
	anchor class: #option; callback: [aBlock value: self]; with: aLabel