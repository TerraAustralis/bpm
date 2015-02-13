permissions
getAccessLevelFor: anObject in: aProcess 
	"Return the access level for <anObject> in <aProcess> for this user.
	We start at #none, and then - depending on if <aProcess> is nil -
	get the global access level or find the highest access level granted
	by the permission objects for this user."

	| permissions level |
	level := Q2Permission none.
	(aProcess) ifNil: [level := anObject getGlobalAccessLevel] ifNotNil: [
		(aProcess isAdmin: self) ifTrue: [^Q2Permission write].
		permissions := self getPermissionsIn: aProcess.
		permissions do: [:each | | access | 
			access := each getAccessLevelFor: anObject.
			(access > level) ifTrue: [ level := access ]]].
	^ level