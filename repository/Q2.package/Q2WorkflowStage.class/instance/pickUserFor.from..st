private
pickUserFor: aCase from: users
	"Pick least loaded user in this process."

	| proc |
	proc := aCase process.
	^(users sortBy: [:a :b | (a loadIn: proc) < (b loadIn: proc)]) first