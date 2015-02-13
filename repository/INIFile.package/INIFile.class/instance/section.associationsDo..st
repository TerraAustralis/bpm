private
section: label associationsDo: aBlock
	(self sectionDictionaries at: label ifAbsent: [^self])
		associationsDo: aBlock