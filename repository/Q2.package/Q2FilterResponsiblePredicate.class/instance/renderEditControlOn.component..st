rendering
renderEditControlOn: html component: fc

	html checkbox value: fc getCache; callback: [:val |
		val ifTrue: [fc setCache: self currentUser] ifFalse: [fc setCache: nil]]