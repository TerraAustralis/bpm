initialize-release
initialize
	"self initialize"

	AngleBrackets := "CharacterSet newFrom:" #($< $>).
	SpecialCharacter := $*.
	SpecialCharacterString := SpecialCharacter asString.
	EmCharacter := $_.
	EmCharacterString := EmCharacter asString