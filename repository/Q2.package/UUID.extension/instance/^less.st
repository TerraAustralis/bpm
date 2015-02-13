*q2-override
< aMagnitude 
	"Answer whether the receiver is less than the argument."

	1 to: self size do: [:i |
		(self at: i) < (aMagnitude at: i) ifTrue: [^true].
		(self at: i) > (aMagnitude at: i) ifTrue: [^false] ].
	^false.