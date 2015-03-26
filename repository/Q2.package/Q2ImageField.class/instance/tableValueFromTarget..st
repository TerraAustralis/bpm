value and cache
tableValueFromTarget: aTarget
  ^ aTarget image isNil
    ifTrue: [ ^ 'No image' ]
    ifFalse: [ ^ aTarget image localFileName ]