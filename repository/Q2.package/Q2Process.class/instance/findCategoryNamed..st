finding
findCategoryNamed: aName 
	| modelCat |
	^self categories detect: [:cat | cat name = aName] 
		ifNone: [
			modelCat := self model findCategoryNamed: aName.	
			modelCat ifNotNil: [^self importCategory: modelCat].
		]