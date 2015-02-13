as yet unclassified
load: aCustomObjectType
	"Load the current tuples into the aCustomObjectType, either
	incrementally or by full replace.
	Return true on success, false on failure."

	| con resultSet resultObjects |
	[con := ODBCConnection dsn: dsn user: user password: password.
	Q2Log info: 'ODBC query: ', query.
	resultSet := con resultSetFor: query.
	Q2Log info: 'Done ODBC query.'.
	resultObjects := OrderedCollection new.
	resultSet do: [:each | 
		resultObjects add: (Q2CustomObject valuesFromDictionary: each fields: aCustomObjectType fields)].
	aCustomObjectType updateFrom: resultObjects.
	con close] on: ODBCError do: [:ex |
		Q2Log error: 'ODBC error when loading custom object type "', aCustomObjectType name, '": ', ex asString]