forms and fields
fillForm: aForm
	"fill form with fields"
	aForm fields setContents: #(). "clear all fields"
	aForm newText name: #default; label: 'Default color'; description: 'Input the color value. It can be a color name like green, aqua e.t.c. or color code like ''#405068''';
	withSelector: #codes key: #default.
	aForm newDivider.

	(codes keys copyWithout: #default) asSortedCollection do: [ :key | 
			aForm newText name: key; label: key; withSelector: #codes key: key; description: 'Input the color value. It can be a color name like green, aqua e.t.c. or color code like ''#405068'''.
		]