html-links
mailto: nameAndEmail
	"Add a mailto: anchor link given a nameAndEmail like:
		'Robert Robertson <rob@here.com>' ->
		'<a href='mailto:rob@here.com'>Robert Robertson</a>'
	If <aString> does not conform it will be inserted without an anchor."

	| lessThan moreThan |
	lessThan := nameAndEmail indexOf: $<.
	moreThan := nameAndEmail indexOf: $>.
	(lessThan * moreThan = 0) ifTrue:[^self text: nameAndEmail].
	^self link: 'mailto:', (nameAndEmail copyFrom: lessThan + 1 to: moreThan - 1)
		text: (nameAndEmail copyFrom: 1 to: lessThan - 2)