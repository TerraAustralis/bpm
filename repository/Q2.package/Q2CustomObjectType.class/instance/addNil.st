loading
addNil

	hasNil ifTrue: [ (objects includes: nil) ifFalse: [objects addFirst: nil]]