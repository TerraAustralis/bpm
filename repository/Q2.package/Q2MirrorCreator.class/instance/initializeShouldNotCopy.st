copying
initializeShouldNotCopy
	shouldNotCopy := IdentitySet new.
	{ Class. CompiledMethod } do: [ :each | shouldNotCopy addAll: each withAllSubclasses ].