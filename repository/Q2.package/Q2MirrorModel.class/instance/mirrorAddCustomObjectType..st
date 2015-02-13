mirrors-obsolate
mirrorAddCustomObjectType: cot
	"Add it if missing."

	(customObjectTypes includes: cot) ifFalse: [customObjectTypes add: cot copy]