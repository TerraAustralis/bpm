basic markup
encodeCharacter: aCharacter
	document addElement: ('&#', aCharacter asInteger asString, ';').