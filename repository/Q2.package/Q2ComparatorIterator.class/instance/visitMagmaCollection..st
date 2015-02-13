as yet unclassified
visitMagmaCollection: anObjectWithPath
	self visitIvarsOf: anObjectWithPath named: #(#indexes).
	self visitCollection: anObjectWithPath