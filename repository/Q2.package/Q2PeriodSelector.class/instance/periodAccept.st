submitting
periodAccept
	|days |
	days := (endDate date - startDate date) days + 1.
	"periodReceiver period: days."
	days <= 0
		ifTrue:  [
			self inform:  ['Negative Date!'].
				"days = 0  
					ifTrue:  ['Cannot process period of 0 days']
					ifFalse:  ['Cannot process negative number of days']"
				]
		ifFalse:  [periodReceiver period: days].