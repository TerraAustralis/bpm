html
formWithAction: actionUrl do: aBlock
	self formWithMethod: 'POST' action: actionUrl do: aBlock