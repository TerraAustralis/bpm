helpers
numberToString: aNumber
  "I return aNumber as a string in decimal format. GemStone uses exponetial format as defaylt, and the decimap format uses comma , rather than dot . At least on  Swedish platform. Perhaps this can be configures in GemStone?"

  | numberAsString |
  (aNumber respondsTo: #'asStringUsingFormat:')
    ifTrue: [ 
      self flag: #'gemstone'.
      numberAsString := aNumber asStringUsingFormat: #(1 2 false).
      numberAsString := numberAsString copyReplaceAll: ',' with: '.' ]
    ifFalse: [ numberAsString := aNumber asString ].
  ^ numberAsString