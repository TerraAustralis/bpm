render
renderProcessOn: html
  "Show information about the selected process."

  "	html heading: process name."

  html text: process description.
  html label: 'Total number of cases' data: process numberOfCases.	"html label: 'New' data: process numberOfNewCases.
	html label: 'Open' data: process numberOfOpenCases.
	html label: 'Closed' data: process numberOfClosedCases."
  html heading
    level2;
    with: 'Workflow'.
  html image document: self graph document	"width: '100%';"