mapless
insert
  "This new object has come from the front end"

  self initialize.
  self ensureId.
  self username: (self at: 'firstName').
  self password: (self at: 'password').
  self email: (self at: 'email').
  self name: (self at: 'email').
  self bpmModel addUser: self.
  super insert