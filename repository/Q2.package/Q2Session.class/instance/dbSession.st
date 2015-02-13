database
dbSession
  
	^dbSession ifNil: [ self obtainDBSession ]