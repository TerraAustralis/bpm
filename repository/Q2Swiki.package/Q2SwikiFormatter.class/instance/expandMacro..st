macros
expandMacro: macro
	"Handles some smart macros. If macro expansion fails we
	return it prefixed with Exception message."

	| upper pos start pos2 stop now |
	upper := macro asUppercase.

	[upper = 'BASEURL' ifTrue: [^base].
	(upper beginsWith: 'P:') ifTrue: [^builder view urlForLink: (macro copyFrom: 3 to: macro size)]. 
	upper = 'PAGEURL' ifTrue: [^base, '/',builder view model fullName].
	(upper beginsWith: 'DOK:') ifTrue: [
		^base, '/dokument/', (macro copyFrom: 5 to: macro size)].
		(upper beginsWith: 'TID:') ifTrue: [
		pos := upper findString: '-'.
		pos = 0 ifFalse: [
			start := (Time fromString: (upper copyFrom: 5 to: pos)) asTimeStamp.
			pos2 := upper findString: 'TEXT:'.
			pos2 = 0 ifFalse: [
				stop := (Time fromString: (upper copyFrom: pos+1 to: pos2-1)) asTimeStamp.
				now := Time now asTimeStamp. "plusSeconds: 3600*10."
				stop < start ifTrue: [
					"Crossing the ghost hour 00.00, we move one depending on now."
					now > stop
						ifTrue: [stop := stop plusDays: 1]
						ifFalse: [start := start minusDays: 1]].
				(start < now and: [stop > now])
					ifFalse: [^'']
					ifTrue: [^macro copyFrom: pos2+5 to: macro size]]]].
	] on: Exception do: [:ex |
		^'Exception: ', ex printString, ', when expanding macro: ', macro].
	^macroProcessor quote: macro