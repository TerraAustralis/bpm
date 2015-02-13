process properties
processPropertyCleanUpAllForKey: key
  "This code depends on that the ProcessSpecific package is loaded."

  Processor allProcesses
    do: [ :aProcess | 
      | values |
      values := aProcess perform: #'clientData'.
      values ifNotNil: [ values removeKey: key ifAbsent: [  ] ] ]