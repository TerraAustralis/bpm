action
spawnFromCase: case
  | newCase |
  destProcess ifNil: [ ^ self ].
  newCase := destProcess newCase.
  newCase reporter: newCase currentUser.
  newCase owner: newCase reporter.
  forms
    do: [ :f | 
      (case hasForm: f)
        ifTrue: [ 
          (newCase hasForm: f)
            ifFalse: [ newCase addForm: f ].
          f
            fieldsDo: [ :field | newCase atField: field put: (field valueFromTarget: case ifAbsent: [  ]) ] ] ].
  subjectField
    ifNotNil: [ 
      newCase
        subject:
          subjectPrefix , ' ' , (subjectField valueFromTarget: case ifAbsent: [  ]) ].
  descriptionField
    ifNotNil: [ newCase description: (descriptionField valueFromTarget: case ifAbsent: [  ]) ].
  self model createCase: newCase.
  createOnly
    ifFalse: [ 
      "creating a link"
      linkType
        ifNotNil: [ 
          | link |
          link := Q2Link from: case to: newCase type: linkType.
          self model addLink: link ] ]