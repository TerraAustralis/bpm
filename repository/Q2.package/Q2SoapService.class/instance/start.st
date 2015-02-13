start/stop
start
	"Start the SOAP core service and register our own services."

	| service |
	SoapHttpSetup startOn: (Q2Object settings serverSoapPort asNumber).
	(self class organization listAtCategoryNamed: 'soap services') do: [:selector |
		service := SoapService implementor: self selector: selector.
		service signature: (SoapServiceSignature
			name: selector asString
			paramNames: ((1 to: selector numArgs) collect:[:i | ('a', i asString) asSymbol])).
		SoapServiceHandler default add: service].