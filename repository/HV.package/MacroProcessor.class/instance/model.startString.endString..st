initialize-release
model: aModel startString: startString endString: endString
	self block: [:value | aModel expandMacro: value] startString: startString endString: endString