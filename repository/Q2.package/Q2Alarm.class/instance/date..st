as yet unclassified
date: aDate
  "Set the alarm date (or startingdate)"

  date := (aDate isKindOf: Date)
    ifTrue: [ aDate ]
    ifFalse: [ Date fromStream: (ReadStream on: aDate) usingFormat: #(3 2 1 $- 1 1) ]