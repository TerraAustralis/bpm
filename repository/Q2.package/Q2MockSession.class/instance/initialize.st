initialize-release
initialize
	super initialize.
	savedSession := Q2Session current.
	magmaSession :=  TestResourceMockMagma new.
	model := self class mockModel.
	super initialize.