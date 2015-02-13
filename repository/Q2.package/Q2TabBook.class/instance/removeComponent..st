as yet unclassified
removeComponent: aComponent
	components remove: (components detect: [:each | each value = aComponent] ifNone: [^self])