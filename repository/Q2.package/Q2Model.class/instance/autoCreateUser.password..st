users
autoCreateUser: login password: password
  "Lazily create users that exist in LDAP but have not been mirrored yet."

  (Q2Object settings at: #'autoCreateUser' section: 'LDAP')
    ifTrue: [ 
      "Try to create a user from LDAP info"
      (Q2LDAP user: login password: password)
        ifNotNilDo: [ :ldapUser | 
          "Such a user/password combination does exist!"
          (self newUser: login password: password) person
            firstName:
                (ldapUser attrAt: (self settings at: #'givenname' section: #'LDAPfields'))
              lastName:
                (ldapUser attrAt: (self settings at: #'surname' section: #'LDAPfields'));
            email:
                (ldapUser attrAt: (self settings at: #'email' section: #'LDAPfields')).
          ^ true ] ].
  ^ false