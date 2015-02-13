accessing value
storeValue: value target: aTarget
	"Should we check if target have forms here,
	like target holdsForms?"
	^ aTarget atField: field put: value