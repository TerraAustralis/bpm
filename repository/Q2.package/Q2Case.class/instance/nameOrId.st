accessing
nameOrId
  "Return a unique String identifier for this case that will be immutable.
	The name is nil until the case is fully created, so in that case we use the id instead."

  ^ name ifNil: [ id ]