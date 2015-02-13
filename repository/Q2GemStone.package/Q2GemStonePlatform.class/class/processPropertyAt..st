process properties
processPropertyAt: key

	^self processPropertyValues at: key ifAbsent: [nil]