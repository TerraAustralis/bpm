helpers
index: aString with: aTitleString

	swishEWrapper
		index: (aString convertToWithConverter: UTF8TextConverter new) utf8ToIndexCompatible
		with: aTitleString
		appendTo: index.
	self should: (Q2Platform fileDirectoryClass default fileExists: index)