as yet unclassified
addPermissions
	| myCats |
	myCats := (currentProcess findUserNamed: model name ) categories.

	(model getPermissionsIn: currentProcess) do: [:perm | | pn |
		pn := perm name, ' - Default: ', perm defaultLevel.
		graph add: pn.
		(perm categories) ifEmpty: [
			graph add: model name -> pn]. "The default permission"
		(perm categories intersection: myCats) do: [:cat | graph add: '-', (self clean: cat name) -> pn]. "Point back to user cat"
		self addAccessLevelsFor: perm fullName: pn
	]