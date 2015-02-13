roles
setOwner: aUser
  "This is used by the system, no error checking."

  | user |
  aUser
    ifNotNil: [ 
      user := self process wrappedUser: aUser.
      owner ~= user
        ifTrue: [ owner := user ].
      self replaceUser: user as: self ownerRole ]