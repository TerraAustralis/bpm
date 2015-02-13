public
serialize

	^self 
		serializeTxns;
		gZip;
		writeToFile