helpers
stringContainsSeparator: aString

"Returns true if the string contains a separator Character."

aString do: [:char |
	char isSeparator ifTrue: [^true].
	].
^false