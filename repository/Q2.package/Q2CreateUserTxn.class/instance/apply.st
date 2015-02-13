transactions
apply
	"Perform the txn,"

	| username password newUser |

	username := formBuffer newValueAt: #username.
	password := formBuffer newValueAt: #password.
 
	newUser := self model newUser: username password: password.
	formBuffer target: newUser.
	formBuffer flush.
	^formBuffer