private
escape: aString

	^(aString copyReplaceAll: '\' with: '\\')
		copyReplaceAll: '"' with: '\"'