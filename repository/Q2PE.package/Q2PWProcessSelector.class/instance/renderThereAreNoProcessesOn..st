rendering/updating
renderThereAreNoProcessesOn: html

	self currentUser isAdmin ifTrue: [
			html paragraph: 'There are no Processes created yet in the system, an administrator like yourself needs to create one.'.
		]
		ifFalse: [
			html paragraph: 'There are no Processes available for your user to view.'].