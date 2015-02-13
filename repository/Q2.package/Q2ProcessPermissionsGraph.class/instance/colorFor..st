as yet unclassified
colorFor: anObject
	(anObject = Q2Permission write) ifTrue: [^ #palegreen].
	(anObject = Q2Permission read) ifTrue: [^ #yellow].
	(anObject = Q2Permission  none) ifTrue: [^ #red].

Transcript show: anObject; cr.
	^ #black