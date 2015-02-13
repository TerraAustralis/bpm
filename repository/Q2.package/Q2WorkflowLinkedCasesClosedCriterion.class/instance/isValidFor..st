as yet unclassified
isValidFor: aCase 
	"Return true if all linked cases with this linkType are closed."

	^aCase links allSatisfy: [:each | each type ~= linkType or: [each to isClosed]]