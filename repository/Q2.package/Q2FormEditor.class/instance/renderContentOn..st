rendering
renderContentOn: html
	"The div is used to attach CSS to the form."

	renderer := html.
	html div class: 'form'; with: [
		self isSubForm
			ifTrue: [ self renderMainOn: html ]
			ifFalse: [ html form name: model "metaobject" name; with: [ self renderMainOn: html ]]]