private
emailReference
	"Return a reference to this case AND this note that can be added to a subject line."

	^' [#', case name, ':', self number asString, ']'