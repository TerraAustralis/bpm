rendering
addComponentsIn: aFormComponent
	"Let each field add components if the field is readable by the user."

	fields do: [:field |
		(field readCheckIn: aFormComponent processFromModel)
			ifNotNil: [field addComponentsIn: aFormComponent]].
	self addWikiViewerTo: aFormComponent.