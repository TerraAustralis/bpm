synch
reconnectIn: aModel
	"Here we know the formValue has a user as target."

	super reconnectIn: aModel.
	formBuffer target: (aModel findObjectById: formBuffer target)