private
extractCodeFrom: string block: ablock
	"Extract any code inside [] in the string."
	

	| nextIsClass class str |
	nextIsClass := false.
	str := ''.
	class := ''.
	(string findTokens: '[]' keep: '[]') do: [:tok |
		tok = ']' ifFalse: [
			tok = '['
				ifTrue: [nextIsClass := true]
				ifFalse: [
					nextIsClass
						ifTrue: [class := tok. nextIsClass := false]
						ifFalse: [
							str := str, tok]]]].
	class = 'l' ifTrue: [class := 'left-float'] ifFalse: [
	class = 'r' ifTrue: [class := 'right-float'] ifFalse: [
	class = 'c' ifTrue: [class := 'center']]].
	^ablock value: str value: class