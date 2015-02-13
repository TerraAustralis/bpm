render
closeEditor: anEditor
	"Close an editor."
	
	editors removeKey: (editors keyAtValue: anEditor)