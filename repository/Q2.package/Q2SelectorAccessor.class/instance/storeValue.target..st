accessing value
storeValue: value target: aTarget
	^ aTarget perform: (selector , ':') asSymbol with: value