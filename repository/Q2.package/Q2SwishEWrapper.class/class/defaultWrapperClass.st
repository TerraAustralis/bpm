as yet unclassified
defaultWrapperClass
  Smalltalk platformName = 'Win32'
    ifTrue: [ ^ Q2Win32SwishEWrapper ].
  Smalltalk platformName = 'unix'
    ifTrue: [ ^ Q2UnixSwishEWrapper ].
  Smalltalk platformName = 'Darwin'
    ifTrue: [ ^ Q2UnixSwishEWrapper ].
  self notify: Smalltalk platformName , ' is is not yet supported'.
  ^ nil