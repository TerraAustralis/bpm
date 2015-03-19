deprecated
createSelectWidget: values selected: selected name: name 
	"Create a select widget for forms."

	self deprecated: 'Deprecated, use select* methods in HVHtmlBuilder instead.'.
	^self createSelectWidget: values selected: selected name: name withIds: true