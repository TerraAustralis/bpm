as yet unclassified
for: anObject
	^(self allSubclasses detect: [:each | each accepts: anObject]) graphFor: anObject