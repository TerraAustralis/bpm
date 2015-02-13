settings
userSettingsModified
	"The user changed settings, make sure all components
	get a chance to update themselves."

	self childrenDo: [:each | (each respondsTo: #userSettingsModified)
								ifTrue: [each userSettingsModified]]