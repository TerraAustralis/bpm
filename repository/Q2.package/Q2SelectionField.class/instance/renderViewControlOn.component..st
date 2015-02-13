rendering
renderViewControlOn: html component: fieldComponent
	
	multiple
		ifTrue: [
			html orderedList with: [
				fieldComponent value do: [:each |
					html listItem with: [
						fieldComponent renderObject: each on: html ]]]]
		ifFalse: [
			fieldComponent renderObject: fieldComponent value on: html]