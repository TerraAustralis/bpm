private
forceResponsibleFor: aCase
	"If we have gatekeepers, pick one of them.
	Otherwise pick one of the administrators."

	self hasGatekeepers
		ifTrue: [^self pickGatekeeperFor: aCase]
		ifFalse: [
			aCase nobodyResponsible
				ifTrue: [^self pickAdministratorFor: aCase]]