accessing
settings
	"obtain the settings manager for this session"
	^  Q2GjallarSettings file: (self application preferenceAt: #settingsFile)