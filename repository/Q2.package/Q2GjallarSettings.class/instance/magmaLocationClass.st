seaside
magmaLocationClass

	^ Smalltalk at: (self at: #magmaLocationClass section: #seaside 
		ifAbsent: [ #Q2MagmaLocalLocation ]) asSymbol