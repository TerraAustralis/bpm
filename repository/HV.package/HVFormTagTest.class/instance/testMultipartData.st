tests
testMultipartData
	self 
		should: 
			[(self tag)
				beMultipart;
				with: []]
		addAttribute: 'enctype'
		withValue: tag class multipartFormData