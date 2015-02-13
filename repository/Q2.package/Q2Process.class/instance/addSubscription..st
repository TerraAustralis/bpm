events
addSubscription: sub

	sub eventClasses do: [:each |
		self addSubscription: sub for: each]