initialize-release
editCase: aCase

	editCase _ Q2EditCase parent: self.
	editCase case: aCase.
	self call: editCase