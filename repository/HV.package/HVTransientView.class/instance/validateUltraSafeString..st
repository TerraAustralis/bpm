utilities
validateUltraSafeString: aString

	aString do: [:c | (UltraSafeChars includes: c) ifFalse:[^false]].
	^true