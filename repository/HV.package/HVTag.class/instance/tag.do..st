private
tag: aTag do: aBlock 
	self openTag: aTag.
	aBlock value.
	self closeTag: aTag