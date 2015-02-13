private
contentHash
	"Return a seemingly random large
	integer for repeatable randomness."

	^name hash bitXor: (subject asString, description asString) hash