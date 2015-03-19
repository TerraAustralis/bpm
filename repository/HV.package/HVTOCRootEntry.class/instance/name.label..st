entries
name: aName label: aLabel
	"Add a new child entry.
	Return the entry."

	children ifNil: [children := OrderedCollection new].
	^children add: (HVTOCEntry name: aName label: aLabel parent: self)