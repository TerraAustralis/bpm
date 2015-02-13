rendering
renderEditControlOn: html component: fieldComponent
	"We just add a mechanism for adding a new child,
	but we delegate the actual task of rendering that to the field."

	html orderedList with: [
		fieldComponent children do: [:component |
			html listItem with: [
				html render: component]]].
	field renderAddOn: html component: fieldComponent.