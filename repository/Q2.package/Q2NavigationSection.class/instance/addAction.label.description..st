building
addAction: aBlock label: aLabel description: aDescription
	^self add: (Q2NavigationActionWrapper block: aBlock label: aLabel description: aDescription)