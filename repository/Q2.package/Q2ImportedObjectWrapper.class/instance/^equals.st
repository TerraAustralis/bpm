wrapping
= anObject

	^anObject = wrappedObject or: [
		anObject class = self class 
			and: [anObject wrappedObject = wrappedObject]]