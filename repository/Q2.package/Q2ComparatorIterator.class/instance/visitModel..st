as yet unclassified
visitModel: anObjectWithPath
	| model |
	model := anObjectWithPath object.
	self 
		visitIvarsOf: anObjectWithPath 
		named: 
			(model class allInstVarNames reject: [:each | 
				each = #notificationsTable | each = #serviceQueues ]).