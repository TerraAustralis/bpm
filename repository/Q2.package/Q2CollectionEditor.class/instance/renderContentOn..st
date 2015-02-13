initialize-release
renderContentOn: html 
	"Render editor/viewer and table."

	html heading: self heading.
	html render: viewComponent.
	html horizontalRule.
	html render: table