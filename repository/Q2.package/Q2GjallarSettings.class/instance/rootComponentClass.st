seaside
rootComponentClass

	^ Smalltalk at: (self at: #rootComponent section: #seaside ifAbsent: [ #Q2Main ]) asSymbol