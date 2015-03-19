dispatching
dispatchOn: method 
	"Dispatch to correct method:
	- If method is empty we call #default
	- If the selector is allowed to be executed then we just call it
	- If method is prefixed with 'src' and viewing the source is allowed,
		then we return a HTML page with the source for that method."

	| m |
	method isEmptyOrNil ifTrue:[ ^self default ].
	m := method asSymbol.
	(self allowedSelector: m)
		ifTrue:[^self perform: m].

	"Is it a request for the source?"
	(m beginsWith: 'src')
		ifTrue: [
			m := (m asString last: (m size - 3)) asSymbol.
			(self allowedSrcSelector: m)
				ifTrue: [^self showSourceFor: m]
				ifFalse: [^self serverError: 'Not allowed to view source']]
		ifFalse: [^self serverError: 'Specified URL: #', method, ' not allowed']