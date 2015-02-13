soap services
mirrorNamesFor: username 
	"Return available mirrors for given user."

	| user |
	Q2Session sessionModelDo: [:sess  :model | 
			 
			user := model findUserNamed: username.
			^((model mirrors select: [:mirror | mirror owner = user]) 
				collect: [:m | m displayString]) asArray]