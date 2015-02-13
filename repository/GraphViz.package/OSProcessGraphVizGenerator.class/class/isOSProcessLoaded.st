as yet unclassified
isOSProcessLoaded
  (Smalltalk classNamed: #'OSProcess') ifNil: [ ^ false ].
  Smalltalk current listLoadedModules
    detect: [ :e | '*OSProcessPlugin*' match: e ]
    ifNone: [ ^ false ].
  ^ true