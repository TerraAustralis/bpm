copying
initializeShouldNotVisit
	shouldNotVisitClasses := IdentitySet new.
	{ Class. String. Number. Character. ByteArray. Boolean. UndefinedObject. BlockContext. Q2TransactionLog } do: [ :each | 	
		shouldNotVisitClasses addAll: each withAllSubclasses ].
	shouldNotVisitClasses removeAll: { ScaledDecimal. Fraction }. "These can cause an error in magma. If we remove them, they are fully copied."
	shouldNotVisitObjects := IdentitySet new.