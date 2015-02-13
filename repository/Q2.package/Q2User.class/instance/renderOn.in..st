render
renderOn: html in: aComponent
	"Default render."

	html anchor
		tooltip: (self tooltipOn: html);
		url: 'mailto:', self email; with: self fullName