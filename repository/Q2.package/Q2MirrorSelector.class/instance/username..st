accessing
username: anObject
	| result |
	username := anObject.
	result _ Q2Object mirrorNamesAndPrefixesFor: username.
	mirrors _ result first.
	prefixes _ result second