accessing
items: aReader
	reader == aReader ifFalse: [
		^self reader: aReader]