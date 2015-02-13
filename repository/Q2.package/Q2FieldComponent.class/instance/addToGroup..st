rendering
addToGroup: coll
	| group |
	field isFieldGroup ifTrue: [
		field isBegin ifTrue: [ 
			group := OrderedCollection new.
			coll add: group.
			group add: coll. "remember parent"
			group add: self.
			^ group
		] ifFalse: [
			group := coll first.
			coll remove: group.  "remove parent"
			^ group
		]
	]
	ifFalse: [
		coll add: self.
		^ coll
	]