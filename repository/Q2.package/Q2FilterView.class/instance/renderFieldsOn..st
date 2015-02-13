rendering
renderFieldsOn: html
	"Render the filter. Predicate fields are rendered in rows of max 5 columns."

	html table with: [
		fieldComponents groupsOf: 5 do: [:components |
			html tableRow: [
				components do: [:child |
					html tableData class: #pc; with: [
						html table: [
							html render: child ]]]]]]