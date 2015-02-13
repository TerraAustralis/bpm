rendering
renderViewControlOn: h component: fieldComponent

	multiline 
		ifTrue: [h withLineBreaksAndUrls: fieldComponent formatedCache]
		ifFalse: [fieldComponent renderObject: fieldComponent getCache on: h "h render: fieldComponent formatedCache"]