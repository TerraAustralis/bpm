methods
setUp
	
	Q2Session useMock: TestResourceMockMagma new.
	model := Q2Session current createMockModel.
	model useIndexing: false.