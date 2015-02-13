generating
generateType: outputTypeString
  "Run dot and produce a string with the requested output type. See the
	documentation for dot for a list of supported output types."

  | fs converterClass |
  self make: outputTypeString.
  fs _ FileDirectory default
    fileNamed: (self outputFileNameFor: outputTypeString).
  [ 
  converterClass _ Smalltalk at: #'Latin1TextConverter' ifAbsent: [ nil ].
  converterClass ifNotNil: [ fs converter: converterClass new ].
  ^ fs contentsOfEntireFile ]
    ensure: [ 
      fs close.
      self cleanUpIntermediateFilesAsAppropriate ]