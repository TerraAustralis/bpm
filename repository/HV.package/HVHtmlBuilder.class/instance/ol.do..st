html
ol: items do: aBlock
	"Make an ordered list."
	
	^self tag: 'ol' do: [
		items do: [:i |
			self tag: 'li' doValue: [aBlock value: i]]]