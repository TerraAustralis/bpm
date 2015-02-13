accessing
at: keyString put: valueString
	^ self iniFile section: self label at: keyString put: valueString