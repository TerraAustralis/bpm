html
ul: items do: aBlock
	"Make an unordered list but we let the block
	add the item to the builder itself."

	^self tag: 'ul' do: [
		items do: [:i |
			self tag: 'li' doValue: [aBlock value: i]]]