initialize-release
associateWithProcess: aProcess
	"By default, add all categories."

	self addCategories: (self currentUser getCategoriesFor: self class in: aProcess).
	aProcess addScratchCase: self