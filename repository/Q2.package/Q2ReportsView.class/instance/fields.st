as yet unclassified
fields
	((fields isNil) and: [current notNil]) ifTrue: [fields := current fields].
	(fields isNil) ifTrue: [fields := OrderedCollection new].
	^fields