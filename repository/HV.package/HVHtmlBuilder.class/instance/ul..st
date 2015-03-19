html
ul: items
	"Make an unordered list by using asString on the elements."
	
	^self ul: items do: [:i | self html: i asString ]