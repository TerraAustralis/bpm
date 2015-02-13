instance creation
instance
	| instance |
	instance := Default ifNil: [Default := self new].
	^instance.