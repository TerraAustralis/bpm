users
realUsers

	self flag: #q2todo. "this is costly, perhaps we can use a reader/query?"
	^(users select: [:each | each isRealUser]) asOrderedCollection

"	^users values asOrderedCollection removeAll: (Array with: self systemUser with: self anybodyUser); yourself"