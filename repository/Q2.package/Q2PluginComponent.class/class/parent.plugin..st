as yet unclassified
parent: aParent plugin: aPlugin
	^ (self canUsePlugin: aPlugin) ifTrue: [
		(super parent: aParent) plugin: aPlugin ]
	ifFalse: [ nil ]