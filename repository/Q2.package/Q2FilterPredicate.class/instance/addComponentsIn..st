rendering
addComponentsIn: aFormComponent

	| component |
	component := (self asComponentIn: aFormComponent).

"	(self writeCheckIn: aFormComponent processFromModel) ifNil: [
		fieldComponent isReadonly: true]."

	aFormComponent addFieldComponent: component.

"	wikiPage ifNotNil: [
		aFormComponent addComponent:
			((Q2MiniWikiViewer parent: aFormComponent)
				page: wikiPage; owner: self)]"