events
removeSubscription: subs
	subs eventClasses do: [:each | self removeSubscription: subs for: each]