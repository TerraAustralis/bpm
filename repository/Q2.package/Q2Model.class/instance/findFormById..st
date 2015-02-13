forms
findFormById: anId
	"Look globally, in all processes and among the hard ones."

	| result |
	^forms detect: [:f | f id = anId ] ifNone:[
		self processes do: [:p |
			result _ p forms detect: [:f | f id = anId ] ifNone: [nil].
			result notNil ifTrue: [^result]].
		Q2Object allSubclassesDo: [:class |
			class editForm ifNotNil:[
				class editForm id = anId ifTrue: [^class editForm]]].
		^nil]