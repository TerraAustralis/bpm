html
ol: items extract: aBlock
	"Make an ordered list with the value of the block
	rendered as the item, use #ol:do: for stuff where
	the block can not return something to be rendered."
	
	^self tag: 'ol' do: [
		items do: [:i |
			self tag: 'li' do: [aBlock value: i]]]