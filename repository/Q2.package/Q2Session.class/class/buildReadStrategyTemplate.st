instance creation
buildReadStrategyTemplate
 	| aclass |
^ (HierarchyBrowser new initHierarchyForClass: Q2Object) classList

	 inject: '' into: [ :b :a | b , String cr ,'"', a, ((((aclass := (Smalltalk at: (a withBlanksTrimmed) asSymbol)) allInstVarNames difference: aclass instVarNames) ,#(' - ') , aclass instVarNames)   inject: '' into: [ :c :d | c , ' ', d]), '"' ].