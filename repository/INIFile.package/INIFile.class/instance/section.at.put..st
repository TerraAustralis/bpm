private
section: label at: keyString put: valueString
	^ (self ensureSectionDictionary: label)
		at: keyString put: valueString