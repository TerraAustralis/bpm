as yet unclassified
renderContentOn: html
	"Render the field as a list item in a field list."

	self form isViewer
		ifTrue: [field renderViewItemOn: html component: self]
		ifFalse: [field renderEditItemOn: html component: self]