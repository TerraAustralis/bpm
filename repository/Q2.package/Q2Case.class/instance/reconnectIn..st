synch
reconnectIn: aModel
	"Reconnect the case."

	| process |
	stage := aModel findObjectById: stage. "given the stage we have the process"
	process := stage process.

	categories ifNotNil: [ "Look for the categories in the model and the process"
		categories := categories collect: [:cat |
			(process findObjectById: cat) ifNil: [ 
				self model findObjectById: cat ] ] ].
	roles := self newRolesCollection addAll: (roles collect: [:ass | Association key: (process findUserOrPersonById: ass key) value: (process findObjectById: ass value)]); yourself.

	forms := forms collect: [:f | process findFormById: f].
	reporter := process findUserOrPersonById: reporter.
	source := process findUserOrPersonById: source.
	responsible := process findUserOrPersonById: responsible.

	transactions := Q2TransactionCollection new.

	self initializeExtras