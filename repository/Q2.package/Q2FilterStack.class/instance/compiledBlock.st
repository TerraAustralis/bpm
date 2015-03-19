compilation
compiledBlock
  "Compile the block. We also collect all the values, either indirectly while
	compiling or using #collectValues. We maintain a copy of the values
	from the last execution so that we can detect a change in the filter stack
	and avoid unneeded re-filtering."

  compiledBlock
    ifNil: [ 
      values _ nil.
      compiledBlock := SpEnvironment
        evaluate:
          '[:case | ' , (self conjunct: filters)
            ,
              (freetextIds
                ifNotNil: [ ' & (case id includesAnyOf: freetextIds)]' ]
                ifNil: [ ']' ])
        in: nil ]
    ifNotNil: [ self collectValues ].
  lastValues _ values copy.
  ^ compiledBlock