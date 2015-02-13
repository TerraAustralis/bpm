formvalue
newBufferFor: aTarget selector: selector
	"Create a new form buffer for me through a relay."

	^(Q2FormBuffer for: self) target: aTarget; targetSelector: selector