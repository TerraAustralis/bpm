formvalue
newBufferFor: aTarget
	"Create a new form buffer for me."

	^(Q2FormBuffer for: self) target: aTarget