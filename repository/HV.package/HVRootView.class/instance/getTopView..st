comanche
getTopView: request
	"Default way of instantiating a top view for the model.
	If the viewClass is set we use that, otherwise we try
	a double dispatch on the model using #viewFor:."

	^viewClass
		ifNotNil: [viewClass on: model parent: self]
		ifNil: [(model respondsTo: #viewFor:)
				ifTrue: [model viewFor: self]
				ifFalse: [self error: 'Do not know which view to instantiate!']]