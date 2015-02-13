as yet unclassified
copyFor: aMirrorModel
	
	^self shallowCopy
		disconnect; 
		reconnectIn: aMirrorModel;
		yourself