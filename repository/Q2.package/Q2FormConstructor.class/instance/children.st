as yet unclassified
children
	| childs |
	childs := OrderedCollection new.
	childs add: editor.
	fields do: [ :each | childs add: each value ].
	^ childs