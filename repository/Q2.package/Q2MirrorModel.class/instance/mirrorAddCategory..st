mirrors-obsolate
mirrorAddCategory: aCat
	"Add it if missing."

	(definedCategories includes: aCat) ifFalse: [definedCategories add: aCat]