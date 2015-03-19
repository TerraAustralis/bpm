deprecated
createSelectWidget: values name: name 
	"Create a select widget for forms."

	self deprecated: 'Deprecated, use select* methods in HVHtmlBuilder instead.'.
	^self createSelectWidget: values selected: 1 name: name