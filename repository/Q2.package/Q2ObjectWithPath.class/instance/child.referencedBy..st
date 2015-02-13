as yet unclassified
child: anObject referencedBy: aStringOrIndex
	| child |
	child := self class on: anObject.
	child path: (self path copyWith: aStringOrIndex).
	^child