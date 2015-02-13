gemstone
deleteDatabase

	Q2Platform beginTransaction.
	UserGlobals removeKey: #Q2Root ifAbsent: [].
	Q2Platform commitTransaction.