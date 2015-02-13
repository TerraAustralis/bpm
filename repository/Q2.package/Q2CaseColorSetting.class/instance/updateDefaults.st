updating
updateDefaults
	self model processes do: [ :process |
		process workflow stages do: [ :stage | 
			codes at: stage name asSymbol ifAbsentPut: [ self defaultColor ]
		]
	 ].