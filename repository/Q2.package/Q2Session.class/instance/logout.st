login
logout
  currentUser
    ifNotNil: [ Q2Log info: 'User ' , currentUser username , ' logged out.' ].
  self currentUser: nil.
  self requestContext response
    addCookie:
      (WACookie new
        key: self cookieName;
        value: 'logged out';
        expireIn: (Duration seconds: 1);
        yourself)	"self requestContext redirect"