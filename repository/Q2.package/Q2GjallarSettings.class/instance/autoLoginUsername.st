settings with defaults
autoLoginUsername

	^ self at: #autoLoginUsername section: #globals ifAbsent: [ nil ]