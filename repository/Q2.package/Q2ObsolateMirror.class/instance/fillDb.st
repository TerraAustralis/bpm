private
fillDb
	"Open, copy into and close db. This should take into account the selected processes,
	permissions of the owner, and also any filters specified."

	| session |
	session := (MagmaLocalLocation path: self databaseFullPath) newSession.
	session connectAs: 'mirror builder'.
	session begin.
	Q2MagmaSessionPool sessionDo: [:sess | 
		[ session root at: 'Q2Model' put: self model mirrorCopy ]
			on: Q2CurrentMirror
			do: [:notification | notification resume: self ] ].
	session commit.
	session disconnectAndClose