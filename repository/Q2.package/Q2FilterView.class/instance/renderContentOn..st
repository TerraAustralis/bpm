rendering
renderContentOn: html
	"The div is used to attach CSS to the form."

	"self refreshCacheIfNeeded. "
	html div class: #filter; with: [
		self isSubForm
			ifTrue: [ self renderMainOn: html ]
			ifFalse: [ html form name: model "metaobject" name; with: [ self renderMainOn: html ]]]