initialize-release
initializeEditors
	| editor |
	formValue do: 
			[:val |
			edit 
				ifTrue: [editor := val getEditor]
				ifFalse: [editor := val getViewer].
	 
			editor parent: self.
			(editor isViewer) ifFalse: [editor subForm: true; noButtons].
			editors add: editor.
			tabBook add: editor label: val label].
	tabBook select: formValue formValues first label