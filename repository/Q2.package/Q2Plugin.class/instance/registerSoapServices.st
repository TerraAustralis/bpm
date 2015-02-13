private
registerSoapServices
	"Register SOAP services for all class side methods in category 'soap services'."

	| service |
	(self class organization listAtCategoryNamed: 'soap services') do: [:selector |
		service := SoapService implementor: self selector: selector.
		"Java-Axis uses arg0, arg1, ..., argNN as default param names"
		service signature: (SoapServiceSignature
			name: self class name, '_', (selector asString copyWithoutAll: ':')
			paramNames: ((1 to: selector numArgs) collect:[:i | ('arg', (i-1) asString) asSymbol])).
		SoapServiceHandler default add: service].