private
addCategories: aCollection
	aCollection do: [:each | self addCategory: each].