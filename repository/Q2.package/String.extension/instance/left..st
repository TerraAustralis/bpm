*q2-extensions
left: aSize
	^self truncateTo: aSize
"
	'123456789' left: 3
	'123' left: 3
	'12' left: 3
	'' left: 3
"