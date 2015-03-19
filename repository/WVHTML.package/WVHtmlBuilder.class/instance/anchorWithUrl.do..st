html
anchorWithUrl: urlString do: aBlock
	self attributes href: urlString.
	self tag: 'a' do: aBlock.