as yet unclassified
loadEditor
	"Populate the multiform editor with the proper buffer."

	| multi iniFile buf |
	multi := Q2MultiFormValue new.
	iniFile := self settings iniFile.
 
	iniFile sectionDictionaries keysAndValuesDo: [ :secName :secDict |  | form |
		form := Q2Form new label: secName.

		secDict associationsDo: [ :ass | 
			(ass value isKindOf: Boolean) ifTrue: [
				form newBoolean label: ass key; withSelector: ass key
			]
			ifFalse:[
				form newText label: ass key; withSelector: ass key 
			]
		].
		buf := form newBufferFor: self.
		multi add: buf
	].
	editor edit: multi.