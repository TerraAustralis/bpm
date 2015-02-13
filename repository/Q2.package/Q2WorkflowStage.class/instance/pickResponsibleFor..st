private
pickResponsibleFor: aCase
	"If we have gatekeepers, pick one of them in a random fashion.
	Otherwise, if there is nobody responsible and
	the Process does not allow that - pick one of the administrators.
	Else we return nil."

	self hasGatekeepers
		ifTrue: [^self pickGatekeeperFor: aCase]
		ifFalse: [
			(aCase nobodyResponsible and: [(self processSetting: #allowNobodyResponsible) not])
				ifTrue: [^self pickAdministratorFor: aCase]].
	^nil