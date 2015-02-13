initialize-release
initialize

	super initialize.
	table _ self buildTable.
	viewComponent := self createViewComponent.
	editComponent _ self createEditComponent