roles
responsible: aUser 
	"Only one user can be responsible."

	aUser ifNotNil: [
		(aUser isNobody and: [(self processSetting: #allowSettingResponsiblityToNobody) not])
			ifTrue: [self error: 'Nobody is not allowed as responsible in this process'].
		^self setResponsible: aUser]