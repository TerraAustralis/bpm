html
ol: items
	"Make an ordered list by using asString on the elements."
	
	^self ol: items do: [:i | self html: i asString ]