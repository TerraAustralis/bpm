permissions
newCategoryNamed: aName
	"This method is Private... 
	 Try categoryNamed - it will create a non-existing category."

	| cat |
	cat := Q2Category named: aName.
	self addObjectById: cat.
	definedCategories add: cat.
	^ cat