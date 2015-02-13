roles
owner: aUser
  "Only one user can be owner."

  aUser
    ifNotNil: [ 
      owner := self process wrappedUser: aUser.
      self replaceUser: owner as: self ownerRole ]