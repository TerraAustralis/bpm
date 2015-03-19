rendering
renderOn: html
	associations ifNotNil:
		[associations do:
			[:assoc |
			self renderAttribute: assoc on: html]].