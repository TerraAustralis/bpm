building
addComponentsIn: aFormComponent
	| fieldComponent |

	fieldComponent := (self asComponentIn: aFormComponent).
	(self writeCheckIn: aFormComponent processFromModel) ifNil: [
		fieldComponent isReadOnly: true].
	aFormComponent addFieldComponent: fieldComponent.
	self addWikiViewerTo: aFormComponent.