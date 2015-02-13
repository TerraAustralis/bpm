private
removeCategory: aCategory
	"Remove category from me if I am in it."

	(categories notNil and: [categories includes: aCategory]) ifTrue:[
		categories remove: aCategory].
	^aCategory