private
skipXmlTagAndDoctype: aStream 
	aStream next: canvas xmlTag size.
	aStream next: canvas doctype size