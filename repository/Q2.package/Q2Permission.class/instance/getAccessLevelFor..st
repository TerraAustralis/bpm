as yet unclassified
getAccessLevelFor: anObject
  | level |
  level := Q2Permission undefined.
  ((anObject respondsTo: #'owner') and: [ anObject owner == self session user ])
    ifTrue: [ ^ self ownerLevel ].
  (anObject isKindOf: Q2Category)
    ifTrue: [ ^ accessLevels at: anObject ifAbsent: [ defaultLevel ] ].
  anObject categories
    do: [ :each | 
      | access |
      access := accessLevels at: each ifAbsent: [ Q2Permission undefined ].
      access > level
        ifTrue: [ level := access ] ].
  level = Q2Permission undefined
    ifTrue: [ ^ defaultLevel ].
  ^ level