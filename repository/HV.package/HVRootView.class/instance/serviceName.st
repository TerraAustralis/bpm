defaults
serviceName
	"By default we use class name of the HVRootView subclass,
	otherwise the class name of viewClass if we have one."

	^(viewClass notNil and: [self class = HVRootView])
		ifTrue: [viewClass name]
		ifFalse: [self class name]