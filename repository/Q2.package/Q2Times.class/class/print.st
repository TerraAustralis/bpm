as yet unclassified
print
	| last |
	Times do: [:ass |
		Transcript show: ass key, ': ', ass value printString.
		last ifNotNil: [Transcript show: ' diff:', (ass value - last) printString].
		Transcript cr.
		last := ass value]