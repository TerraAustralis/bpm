accessing
addAll: assocCollection
	assocCollection associationsDo:
		[:assoc | self at: assoc key put: assoc value]