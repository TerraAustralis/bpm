as yet unclassified
addNotifications: items for: user 
	| value |
	Q2Log 
		info: items size asString , ' notification(s) added for ' , user name , '.'.
	value := pendingNotifications at: user ifAbsentPut: [OrderedCollection new].
	value addAll: items.
	Q2Log debug: self asString