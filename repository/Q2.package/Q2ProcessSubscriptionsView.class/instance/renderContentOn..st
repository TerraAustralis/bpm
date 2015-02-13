as yet unclassified
renderContentOn: html
	"We override to get rid of heading and introduction - this component
	is embeddded and should not show that."

	self renderViewOn: html