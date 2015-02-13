as yet unclassified
saveItem: anObject 
	"Update old or create new"
	anObject 
		ifNil: [ "Create new object"
			current := Q2ReportDefinition named: reportName.
			current selector: selector.
			current fields: fields.
			current filter: filter.
			self model addNamedObject: current using: #reportDefinitions in: self currentUser
		]
		ifNotNil: [ "Update object" | updated |
			updated := Q2ReportDefinition named: reportName.
			updated name: reportName.
			updated selector: selector.
			updated fields: fields.
			updated filter: filter.
			self model modifyNamedObject: updated using: #reportDefinitions old: current in: self currentUser
		]