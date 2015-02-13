tests
urlForLink: aString
	"This is only for tests. We just return the string.
	Below is a sample method from HomepageBuilder included as a sample."

	^aString


"urlForLink: aString
	""Resolve aString into a relative url. Case insensitive.
	We check for products, employees, special pages,
	newslines and documents in that order. If nothing matches
	the string is returned as it is.""

	| hit string |
	string := aString asLowercase.
	hit := company productOrGroupNamed: string.
	hit ifNotNil: [^'produkter/', hit nameInGroup].
	hit := company employees detect: [:e | e name asLowercase beginsWith: string] ifNone: [nil].
	hit ifNotNil: [^'personal/', hit name].
	hit := specialPages detect: [:p | p title asLowercase = string] ifNone: [nil].
	hit ifNotNil: [^'sida/', hit id asString].
	hit := newsItems detect: [:i | i title asLowercase = string] ifNone: [nil].
	hit ifNotNil: [^'nyheter/', hit title].
	hit := documents detect: [:d | d alias asLowercase = string or: [d fileName asLowercase = string]] ifNone: [nil].
	hit ifNotNil: [^'dokument/', hit fileName].
	""no hit...""
	^aString"