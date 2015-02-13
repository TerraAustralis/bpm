as yet unclassified
go
	| results |
	testName ifNil: [ self useDefaultTestName ].
	results := OrderedCollection new.
	(1 to: tasks size)
		do: [ :index |
			| task |
			task := tasks at: index.
			results add: task key ->
			[ { task }
				do: [ :t | t value value ]
				displayingProgress: task key ] timeToRun milliSeconds asDuration.
			task := nil.
			tasks at: index put: nil ]
		displayingProgress: 'Performing ', testName.
	results add: 'sum' -> (results collect: [ :each | each value ]) sum.
	self printResultsFrom: results.
	^results