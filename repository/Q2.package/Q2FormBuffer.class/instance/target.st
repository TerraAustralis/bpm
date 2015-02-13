accessing
target
	"Either directly or using a selector."

	^targetSelector ifNil: [target] ifNotNil: [target perform: targetSelector]