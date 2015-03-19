deprecated
methodInUrl: url after: aPrefix
	"Extracts the method from the url.
	The methodname is after the prefix upto the first $? $/ or end of url like this:
	'/prefix/method/knirk?habbadubba' => 'method'
	'/prefix/method?habbadubba' => 'method'
	'/prefix/method' => 'method'
	'/prefix/' => ''
	'/prefix' => ''"

	| method endq ends |
	self deprecated: 'Deprecated, use #nextMethod or similar methods instead.'.

	(url = aPrefix) ifTrue:[ ^'' ].
	method := url copyFrom: aPrefix size + 1 to: url size.
	(method = '/') ifTrue:[ ^'' ].
	method := method allButFirst.
	endq := method indexOf: $?.
	ends := method indexOf: $/.
	(endq = 0) ifTrue:[ endq := method size + 1].
	(ends = 0) ifTrue:[ ends := method size + 1].
	^method copyFrom: 1 to: (ends min: endq) - 1