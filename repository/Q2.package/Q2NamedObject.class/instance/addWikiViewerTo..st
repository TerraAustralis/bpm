building
addWikiViewerTo: aFormComponent
	wikiPage ifNotNil: [
	aFormComponent addComponent:
		((Q2MiniWikiViewer parent: aFormComponent)
			page: wikiPage; owner: self)]