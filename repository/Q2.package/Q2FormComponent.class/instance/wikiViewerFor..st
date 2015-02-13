help
wikiViewerFor: object

	^children detect: [:c | (c isKindOf: Q2MiniWikiViewer) and: [c page == object]]