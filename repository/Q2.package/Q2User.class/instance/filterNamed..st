filters
filterNamed: aName
  ^ filters detect: [ :filter | filter name = aName ]