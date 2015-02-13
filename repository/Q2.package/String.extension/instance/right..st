*q2-extensions
right: aSize
	(self size <= aSize) ifTrue: [^self].
	^self copyFrom: self size - aSize + 1 to: self size

"
	'123456789' right: 3
	'123' right: 3
	'12' right: 3
	'' right: 3
"