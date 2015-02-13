rendering
renderViewControlOn: html component: fieldComponent
	"Just render the children as an ordered list."

	fieldComponent children isEmpty ifTrue: [html render: '<none>'].
	html orderedList with: [
		fieldComponent children do: [:component |
			html listItem with: [
				html render: component]]]