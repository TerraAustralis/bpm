enumerating
userSettingsModified
	"The user changed settings, make sure all components
	get a chance to update themselves."

	children do: [:each | each userSettingsModified]