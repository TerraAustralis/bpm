compiling
evaluate: aCode inContext: aContext notifying: requestor

	| meth result |
	meth := 
		aCode asString _compileInContext: aContext 
			symbolList: (System myUserProfile symbolList).
	result := meth _executeInContext: aContext.
	
	^ result