private
addCategory: aCategory
	"Add <aCategory> to me. If I already have it do nothing."

	categories ifNil: [categories := OrderedCollection new].
	(categories includes: aCategory) ifFalse:[
		categories add: aCategory].
	^aCategory