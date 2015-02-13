private
section: label at: keyString ifAbsent: absentBlock
	^(self sectionDictionaries at: label ifAbsent: [^absentBlock value])
		at: keyString ifAbsent: absentBlock