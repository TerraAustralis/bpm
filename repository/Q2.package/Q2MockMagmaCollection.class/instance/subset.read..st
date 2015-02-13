as yet unclassified
subset: sub read: anIndex
	sub sortBlock: [:a :b |
		(anIndex indexHashFor: a) < (anIndex indexHashFor: b)].
	^sub