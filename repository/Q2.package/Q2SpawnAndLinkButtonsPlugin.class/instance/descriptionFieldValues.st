accessing
descriptionFieldValues
	| coll |
	coll := OrderedCollection new.
	self formsValues do: [ :form | 
		coll addAll: form fields
	].
	^ coll