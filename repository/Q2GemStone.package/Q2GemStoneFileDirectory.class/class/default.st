instance creation
default

	^self new pathString: 
		(GsFile 
			perform: #'_expandEnvVariable:isClient:' 
			with: 'PWD' 
			with: false); 
		yourself