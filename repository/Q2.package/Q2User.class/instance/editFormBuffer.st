formvalue
editFormBuffer
	"Return a form buffer for editing the user."

	| multi |
	multi := Q2MultiFormValue new.
	multi
		add: super editFormBuffer; "for this class"
		add: (person editFormBufferThrough: self selector: #person);
		add: (settings editFormBufferThrough: self selector: #settings).
	^multi