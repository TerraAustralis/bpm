login
login: user
  "When this is called we already know there is a user with that username."

  self currentUser: user.
  Q2Log info: 'User ' , user name , ' logged in.'.
  self requestContext response
    addCookie:
      (WACookie new
        key: self cookieName;
        value: (self cookieValueForUsername: user name);
        expireIn: (Duration days: 30);
        yourself)	"self requestContext redirectTo: self handler url"