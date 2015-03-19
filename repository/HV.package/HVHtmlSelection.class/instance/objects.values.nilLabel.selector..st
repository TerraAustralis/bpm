initialize-release
objects: objs values: vals nilLabel: label selector: sel
	objects := objs.
	values := vals.
	nilLabel := label.
	sel ifNil: [labelSelector := #name] ifNotNil: [labelSelector := sel]