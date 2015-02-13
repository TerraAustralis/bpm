rendering
renderContentOn: html
	pages size > 0 ifTrue: [
		html div class: 'batch'; with: [
			self renderPreviousOn: html.
			self renderPagesOn: html. 
			self renderNextOn: html ] ]