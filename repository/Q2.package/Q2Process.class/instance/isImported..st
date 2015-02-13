accessing
isImported: anObject
	^(importedCategories includes: anObject) or: [
		(importedCustomObjectTypes includes: anObject) or: [
			(importedForms includes: anObject) or: [
				importedUsers includes: anObject]]]