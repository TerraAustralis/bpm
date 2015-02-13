soap
verifyPassword: password forUser: username 
	"Call the server remotely."

	self flag: #q2todo.	"SHA hash"
	^self callServer: #verifyPassword:forUser:
		with: { { #a1. password }. { #a2. username } }