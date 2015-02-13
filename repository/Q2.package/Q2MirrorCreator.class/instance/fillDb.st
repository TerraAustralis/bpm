as yet unclassified
fillDb
	"Open, copy into and close db. This should take into account the selected processes,
	permissions of the owner, and also any filters specified."

	| session mirrorModel |
	mirrorModel := self createMirrorModel.
	Smalltalk garbageCollect.
	MagmaMutatingProxy allInstances do: [ :each | [ each mutateAndSend: #yourself ] on: Error do: [ :error | "nothing"] ].
	"Avoid MagmaMutatingProxies to be copied (aka sharing objects between magma databases)"
	"MagmaMutatingProxy allInstances do: [ :each | each printString ].
"
	"MagmaMutatingProxy allInstances ifNotEmpty: [ MagmaMutatingProxy allInstances explore ]."
	session := (MagmaLocalLocation path: self databaseFullPath) newSession.
	session
		connectAs: 'mirror builder';
		begin.
	session
		root at: 'Q2Model' put: mirrorModel.
	session
		commit;
		disconnectAndClose