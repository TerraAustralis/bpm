render
renderContentOn: html 
	"View or edit a multiform. If the form (a multiform) offers optional additional forms
	we also present a selector to add those in edit mode."

	contentId := 'Q2MultiEditFormEditor' , html nextId.
	html div id: contentId; with: [
		self updateContentOn: html
	]