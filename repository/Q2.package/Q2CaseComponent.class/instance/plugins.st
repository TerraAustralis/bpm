accessing
plugins
	| coll |
	coll := OrderedCollection new.
	case process processPluginsDo: [ :plugin | coll add: plugin ].
	^ super plugins , coll