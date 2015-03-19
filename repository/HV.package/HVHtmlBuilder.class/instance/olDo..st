html
olDo: items
	"Make an ordered list by using value on each element."
	
	^self ol: items do: [:bl | bl value ]