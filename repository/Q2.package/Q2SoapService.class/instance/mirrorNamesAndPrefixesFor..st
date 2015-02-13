soap services
mirrorNamesAndPrefixesFor: username 
	"Return available mirrors for given user."

	| user mirrors |
	Q2Session sessionModelDo: [:sess  :model | 
			 
			user := model findUserNamed: username.
			mirrors := model mirrors select: [:mirror | mirror owner = user].
			^{
				((mirrors collect: [:m | m displayString]) asArray).
				((mirrors collect: [:mm | mm prefix]) asArray)
			}]