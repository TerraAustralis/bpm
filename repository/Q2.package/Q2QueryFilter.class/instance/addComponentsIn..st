rendering
addComponentsIn: aFormComponent
	"Let each predicate add components if the field is readable by the user."

	predicates do: [:pred |
	"	(field readCheckIn: aFormComponent processFromModel)
			ifNotNil: ["

		pred addComponentsIn: aFormComponent]