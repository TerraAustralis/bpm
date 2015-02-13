as yet unclassified
remove: aComponent
	"Remove given component. Adjust selection if needed."

	| labelBefore |
	aComponent = self selectedComponent ifTrue: [
		labelBefore _ self tabBefore: aComponent.
		self removeComponent: aComponent.
		self select: labelBefore]
		ifFalse: [
			self removeComponent: aComponent]