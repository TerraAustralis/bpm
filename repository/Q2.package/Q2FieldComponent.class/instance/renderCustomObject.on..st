object rendering
renderCustomObject: aCustomObject on: html
	"Render a CustomObject, we render all fields."

	html render: aCustomObject name.
	aCustomObject size > 1 ifTrue: [
		html text: ' ('.
		2 to: aCustomObject size do: [:i |
			html render: (aCustomObject at: i)].
		html text: ')']