accessing
previousResponsible

	transactions reverseDo: [:each |
		each class = Q2SetResponsibleTxn ifTrue: [
			^each responsibleUser]].
	^nil