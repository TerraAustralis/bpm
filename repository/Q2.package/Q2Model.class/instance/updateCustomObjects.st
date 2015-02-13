custom objects
updateCustomObjects
	"This method is called regularly by a service.
	First load all global ones, then all for each Process.
	Note that each CustomObjectType decides if it is timeToLoad."

	customObjectTypes do: [:type | type load ].
	self processes do: [:process | process updateCustomObjects]