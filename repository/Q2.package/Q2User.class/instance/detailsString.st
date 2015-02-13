render
detailsString
  "If we have a person we can give some data."

  ^ self isPersonalUser
    ifTrue: [ person detailsString ]
    ifFalse: [ '' ]