printing
printOn: aStream
	| printed |
	printed := false.

	aStream nextPutAll: self class name; cr.
	(numCreatedCases ~= 0) ifTrue: [
		printed := true. 
		aStream nextPutAll: 'numCreatedCases: ', numCreatedCases asString; cr].
	(numOpenCases ~= 0) ifTrue: [
		printed := true. 
		aStream nextPutAll: 'numOpenCases: ', numOpenCases asString; cr].
	(numOpenedCases ~= 0) ifTrue: [
		printed := true. 
		aStream nextPutAll: 'numOpenedCases: ', numOpenedCases asString; cr].
	(numClosedCases ~= 0) ifTrue: [
		printed := true. 
		aStream nextPutAll: 'numClosedCases: ', numClosedCases asString; cr].
	(numReopenedCases ~= 0) ifTrue: [
		printed := true. 
		aStream nextPutAll: 'numReopenedCases: ', numReopenedCases asString; cr].
	(numResolvedCases ~= 0) ifTrue: [
		printed := true. 
		aStream nextPutAll: 'numResolvedCases: ', numResolvedCases asString; cr].
	(numResponsibleSetCases ~= 0) ifTrue: [
		printed := true. 
		aStream nextPutAll: 'numResponsibleSetCases: ', numResponsibleSetCases asString; cr].
	(totalTimeToOpen isZero) ifFalse: [
		printed := true. 
		aStream nextPutAll: 'totalTimeToOpen: ', totalTimeToOpen asString; cr].
	(totalTimeToSetResponsible isZero) ifFalse: [
		printed := true. 
		aStream nextPutAll: 'totalTimeToSetResponsible: ', totalTimeToSetResponsible asString; cr].
	(totalTimeToClose isZero) ifFalse: [
		printed := true. 
		aStream nextPutAll: 'totalTimeToClose: ', totalTimeToClose asString; cr].
	(totalPeriodOpen isZero) ifFalse: [
		printed := true. 
		aStream nextPutAll: 'totalPeriodOpen:', totalPeriodOpen asString; cr].
	(totalTimeToResolution isZero) ifFalse: [
		printed := true. 
		aStream nextPutAll: 'totalTimeToResolution: ', totalTimeToResolution asString; cr].
	(totalPeriodForResolutionValidation isZero) ifFalse: [
		printed := true. 
		aStream nextPutAll: 'totalPeriodForResolutionValidation: ', totalPeriodForResolutionValidation asString; cr].

	printed ifFalse: [aStream nextPutAll: 'initialConditions'; cr].  (Duration days: 1) isZero