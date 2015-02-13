as yet unclassified
definition: aString
	" In this method we change the definition of the target of the rootProxy.
	  Visual elements are notified about the change. "
	(self checkSyntaxOf: aString) ifFalse: [^nil].
	result := rootProxy modifyDefinitionTo: aString.
	self changed: #result.
	self changed: #definition.
	self explorer refresh.