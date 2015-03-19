private
putAttribute: key value: value 
	^ (self canvas)
		nextPut: Character space;
		nextPutAll: key;
		nextPut: $=;
		nextPut: $";
		nextPutAll: value;
		nextPut: $"