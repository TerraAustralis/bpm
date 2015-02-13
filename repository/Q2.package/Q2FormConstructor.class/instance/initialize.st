as yet unclassified
initialize
	super initialize.
	fieldTypes := SortedCollection sortBlock: [ :a :b | a name < b name ].
	Q2Field allSubclassesDo: [ :subclass | 
		subclass availForEditing ifTrue: [ fieldTypes add: subclass ]
	].