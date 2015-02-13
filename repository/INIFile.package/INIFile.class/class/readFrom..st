instance creation
readFrom: aStream
	| section line ini |
	section _ nil.
	ini _ self new.
	
	[aStream atEnd] whileFalse:
		[line _ aStream nextLine withBlanksTrimmed.
		line isEmpty ifFalse:
			[line first == $[
				ifTrue: [section _ self newSectionIn: ini from: line]
				ifFalse: [ line first == $: ifFalse: [section ifNotNil: [self addSettingFrom: line to: section]]]]].
	
	^ ini