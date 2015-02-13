soap services
verifyPassword: password forUser: username 
	"Return true or false for username/password combo."
	Q2Log info: 'verifying password: ' , password , ' for: ', username.
	^ Q2Session sessionModelDo: [:sess  :model | model verifyPassword: password forUser: (model findUserNamed: username) ]