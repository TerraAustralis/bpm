as yet unclassified
search: aString

	^self searchUTF8: (aString convertToWithConverter: UTF8TextConverter new) utf8ToIndexCompatible