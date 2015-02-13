compilation
conjunct: compilables
	"Compile all compilables into a single conjunction.
	Each compilable compiles itself to a boolean expression."

	| first |
	^String streamContents: [:stream |
		first := true.
		compilables do: [:each |
			first ifFalse: [stream nextPutAll: ' & '].
			first := false.
			stream nextPut: $(.
			each compileOn: stream stack: self].
		compilables size timesRepeat: [stream nextPut: $) ]]