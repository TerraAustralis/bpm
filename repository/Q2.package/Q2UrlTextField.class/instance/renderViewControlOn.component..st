as yet unclassified
renderViewControlOn: h component: fieldComponent
	multiline 
		ifTrue: [
			h withLineBreaksAndUrls: fieldComponent formatedCache.
			urlBlock ifNotNil: [h anchor url: (urlBlock value: fieldComponent); with: 'link']
		]
		ifFalse: [
			urlBlock ifNotNil: [
				h anchor url: (urlBlock value: fieldComponent); 
					text: fieldComponent formatedCache
			] ifNil:[h render: fieldComponent formatedCache]
		]