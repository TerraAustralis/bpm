permissions
getCategoriesFor: anObject in: aProcess
	"Return the set of categories that the newly created <anObject> should have
	according to the permission objects for the current user."

	^(self getPermissionsIn: aProcess) inject: Set new into: [:cats :each | cats addAll: (each getCategoriesFor: anObject); yourself ]