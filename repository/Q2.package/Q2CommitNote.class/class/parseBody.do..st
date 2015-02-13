parsing
parseBody: body do: aBlock
	"Parse body and return aBlock evaluated with <attributes> and <case name> if found.
	Otherwise return false." 

	| caseName index attrs |
	index := body findString: (String with: Character cr with: Character cr).
	attrs := self parseAttributes: (body first: index).
	attrs at: #diff put: (body copyFrom: index + 3 to: body size).
	caseName := self referenceIn: (attrs at: #description).
	^aBlock value: attrs value: caseName