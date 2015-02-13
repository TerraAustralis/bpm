private
at: keyString ifAbsent: absentBlock
	self sectionDictionaries do: [:dict |
		(dict includesKey: keyString) ifTrue: [^dict at: keyString]].
	^absentBlock value