as yet unclassified
keysFor: aSelector
	"Use selector of list field instead."
	self flag: #fix. "Use of privateKey for retreiving selector. But this works only for fields with selector accessors"
	^parent keysFor: parent field privateKey