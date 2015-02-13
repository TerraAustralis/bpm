accessing
buttons
	"stole code form Q2MultiformEditor"
	^buttons ifNil: [buttons _ Q2ButtonsDecoration model: self]