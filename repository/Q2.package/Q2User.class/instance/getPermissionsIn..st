permissions
getPermissionsIn: aProcess
	"Return the permission objects that apply to this user in <aProcess>:
	- All permission objects with one or more categories in common with the user.
	- All non-categorised permission objects - they apply to all users."

	| currentCats |
	self flag: #q2todo. "this could be cached to improve speed of read/write checks."
	currentCats := (aProcess findUserNamed: name ) categories.
	^ aProcess permissions select: [:each |
		each categories isEmpty or: [currentCats includesAnyOf: each categories]]