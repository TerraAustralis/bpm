seaside
sessionClass

	^ Smalltalk at: (self at: #sessionClass section: #seaside 
		ifAbsent: [ #Q2Session ]) asSymbol