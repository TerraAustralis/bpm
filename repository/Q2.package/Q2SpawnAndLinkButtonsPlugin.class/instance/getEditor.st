accessing
getEditor
	| editor form |
	form := Q2Form new.

	form newText label: 'Label'; withSelector: #label.
	form newText label: 'Button text'; withSelector: #text.
	form newText label: 'Button tooltip'; withSelector: #tooltip.
	form newSelection label: 'Destination process'; withSelector: #destProcess.
	form newBoolean label: 'Create only (do not link)'; withSelector: #createOnly.
	form newSelection label: 'Link type'; withSelector: #linkType.
	form newSelection label: 'Forms to copy'; withSelector: #forms; multiple: true.
	form newSelection label: 'Subject field'; withSelector: #subjectField.
	form newText label: 'Subject prefix'; withSelector: #subjectPrefix.
	form newSelection label: 'Description field'; withSelector: #descriptionField.
	editor := Q2FormEditor model: (form newBufferFor:self).

	editor buttons
		button: 'Save' callback: [editor save. self model savePlugin: self buffer: editor model] tooltip: 'Save changes made in the editor';
		button: 'Cancel' callback: [editor refreshCache] tooltip: 'Cancel any changes made in the editor'.
	^ editor.