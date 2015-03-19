accessing
at: keyString put: valueString
	associations ifNil: [associations _ OrderedCollection new].
	associations add: keyString -> valueString.