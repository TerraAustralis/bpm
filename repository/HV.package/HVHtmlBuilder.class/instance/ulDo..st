html
ulDo: items
	"Make an unordered list by using value on each element."
	
	^self ul: items do: [:bl | bl value ]