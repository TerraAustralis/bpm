render
renderOnLeftPanel: html component: aComp
	(aComp parent isLoggedIn not or: [self currentUser isReporter]) ifTrue: [^self].
	html form: [
		html label for: #jump; tooltip: 'Enter case number with or without prefix'; with: [
			html text: 'Case number:'.
			html break.
			html textInput id: #jump; size: 12; value: (aComp valueAt: #number);
				callback: [:val |  aComp valueAt: #number put: val ].
			html submitButton callback: [self jumpWith: aComp]; value: 'Jump']]