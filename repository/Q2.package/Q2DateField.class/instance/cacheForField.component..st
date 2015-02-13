value and cache
cacheForField: aValue component: fc
  "Return a value suitable for the field."

  (aValue isNil or: [ (aValue isKindOf: String) and: [ aValue isEmpty ] ])
    ifTrue: [ 
      ^ fc isViewer
        ifTrue: [ '<none>' ]
        ifFalse: [ '' ] ].
  ^ [ aValue asDate yyyymmdd ]
    on: Error
    do: [ 
      ^ fc isViewer
        ifTrue: [ '<none>' ]
        ifFalse: [ '' ] ]