comparing
<= aPerson
	"Sort by person. Do not concatenate the first and last names for performance reasons"

	(self name < aPerson name) ifTrue: [^true].
	(self name > aPerson name) ifTrue: [^false].
	(self lastName <= aPerson lastName) ifTrue: [^true].
	^false