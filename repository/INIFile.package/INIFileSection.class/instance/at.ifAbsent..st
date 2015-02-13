accessing
at: keyString ifAbsent: aBlock
	^ self iniFile section: self label at: keyString ifAbsent: aBlock