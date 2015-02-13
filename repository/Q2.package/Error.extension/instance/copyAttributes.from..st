*q2-server-request
copyAttributes: anArray from: sourceObject

	anArray do:
		[ :each |
		self
			instVarNamed: each asString
			put: (sourceObject instVarNamed: each) copy ]