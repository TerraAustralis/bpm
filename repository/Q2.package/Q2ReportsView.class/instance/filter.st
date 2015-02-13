as yet unclassified
filter
	| f |
	f := filter ifNil:[current ifNotNil: [current filter]].
	^f isString ifTrue: [nil] ifFalse: [f]