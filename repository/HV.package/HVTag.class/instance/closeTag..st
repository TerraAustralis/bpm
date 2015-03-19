private
closeTag: aTag 
	(self canvas)
		nextPutAll: '</';
		nextPutAll: aTag;
		nextPut: $>