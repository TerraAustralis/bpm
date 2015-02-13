settings with defaults
autoLoginPassword

	^ self at: #autoLoginUsername section: #globals ifAbsent: [ nil ]