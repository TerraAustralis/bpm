actions
loginUsername: username password: password
  "Check the entered password and if it is ok we inform
	the session object of the current logged in user."

  | user |
  "at present the db accesses the user twice, once in verify and then in login"
  user := self model findUserNamed: username.
  user
    ifNil: [ 
      (self model autoCreateUser: username password: password)
        ifTrue: [ user := self model findUserNamed: username ] ].
  user ifNil: [ ^ false ].
  (self model verifyPassword: password forUser: user)
    ifTrue: [ 
      self session login: user.
      self loggedInNavigation.
      ^ true ].
  ^ false