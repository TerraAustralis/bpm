private
decode: aString
	^aString ifNotNil: [aString unescapePercents utf8ToIso isoToSqueak]