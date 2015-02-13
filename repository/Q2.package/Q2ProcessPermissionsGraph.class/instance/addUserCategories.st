as yet unclassified
addUserCategories
	| myCats |
	myCats := (currentProcess findUserNamed: model name ) categories.
	myCats do: [:cat | | cn |
		cn := '-', (self clean: cat name).
		graph add: cn. "User categories"
		graph add: model name -> cn]. "User -> categories" "must have unique name???"