utilities
validateSafeString: aString

	aString do: [:c | (SafeChars includes: c) ifFalse:[^false]].
	^true