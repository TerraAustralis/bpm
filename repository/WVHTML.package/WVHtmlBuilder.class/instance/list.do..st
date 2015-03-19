html
list: aCollection do: aBlock
	self tag: #ul do:
		[aCollection do:
			[:item |
			self listItem: [aBlock value: item]]]