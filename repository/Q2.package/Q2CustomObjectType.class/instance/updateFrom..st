modifying
updateFrom: aCollection
	"This implementation does not rely on sorting (since SQL and Squeak sorts String keys differently)
	by building a temporary Dictionary to facilitate fast lookups."

	| keys old added toAdd toRemove dict stream batch i |
	added := 0.
	hasNil ifTrue: [objects remove: nil ifAbsent: []].

	toAdd := OrderedCollection new.
	toRemove := OrderedCollection new.
	
	Q2Log info: 'SQL result size: ', aCollection size printString.
	dict := Dictionary new.
	keys := Set new.

	i := 0.
	objects size > 0 ifTrue: [
		objects do: [:t |
			i := i + 1.
			dict at: t id put: t]].

	Q2Log info: 'Committing changed objects'.
	Q2Session current commit: [
		aCollection do: [:each |
			keys add: each id.
			old := dict at: each id ifAbsent: [nil].
			old
				ifNil: [
					toAdd add: each.
					added := added + 1]									"new tuple"
				ifNotNil: [
					old = each ifFalse: [old copyFrom: each]]].			"changed tuple"
	].
	Q2Log info: 'Done'.

	dict valuesDo: [:each |
		(keys includes: each id) ifFalse: [toRemove add: each]].		"removed tuple"		

	Q2Log info: 'Committing removed objects'.
	Q2Session current commit: [
		Q2Log info: '	to remove: ', toRemove size printString.
		toRemove do: [:each | objects remove: each]].
	Q2Log info: 'Done'.

	Q2Log info: 'Committing added objects: ', toAdd size printString.
	stream := toAdd readStream.
	[stream atEnd] whileFalse: [
		batch := stream next: 1000.
		Q2Session current commit: [
			batch do: [:each | objects add: each]].
		Q2Log info: 'added ', (batch size min: 1000) printString].
	Q2Log info: 'Done'.
	toRemove do: [:each | dict removeKey: each id].
	toAdd do: [:each | dict at: each id put: each].
	Q2Log info: 'Dict corrected.'.
	self objectsChanged