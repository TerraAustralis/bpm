private
subjectWithReference
	"Return the subject with reference to this case AND this note attached."

	^subject, ' [#', case name, ':', self number asString, ']'