render
renderNavigationOn: html action: aBlock selected: selected
	"Include me as a heading followed by a unordered list with my children."

	html heading level: 1; tooltip: description; with: label value.
"	html unorderedList: ["
		self children do: [:each |
			each renderNavigationOn: html action: aBlock selected: selected]

"]"