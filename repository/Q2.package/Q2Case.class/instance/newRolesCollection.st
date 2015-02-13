initialize-release
newRolesCollection

	^SortedCollection sortBlock: [:a :b | a value <= b value]. "sort by roles"