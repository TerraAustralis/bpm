as yet unclassified
storeValue: value target: aTarget
	^ (aTarget perform: selector) perform: (selector2 , ':') asSymbol with: value