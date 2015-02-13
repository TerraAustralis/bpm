magma
updateReadStrategy

	self flag: #fix.
	"Updating read strategy not works with remote connections"

	magmaSession isLocal ifTrue: [
		"Here we refer back to our Q2Session object."
	 	self magmaSession readStrategy: 
			(self session readStrategyClass 
				setStrategyUsing: self 
				in: self magmaSession).
		].