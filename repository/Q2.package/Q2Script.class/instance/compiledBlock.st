private
compiledBlock
	"Compile a block lazily."

	^compiledBlock ifNil: [compiledBlock := Compiler evaluate: header, source , ']' for: self logged: false]