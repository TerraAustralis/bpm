formvalue
adminEditFormBuffer
	"Special form for administration."

	| multi |
	multi := Q2MultiFormValue new.
	multi
		add: (self adminEditForm newBufferFor: self);
		add: (person adminEditForm newBufferFor: self selector: #person);
		add: (settings editForm newBufferFor: self selector: #settings).
	^multi