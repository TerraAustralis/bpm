transactions
reconnectIn: aModel
	"Reconnect the cases we link, if possible."

	| fromCase toCase |
	super reconnectIn: aModel.
	fromCase := aModel findObjectById: from.
	fromCase ifNotNil: [
		from := fromCase.
		type := from process findObjectById: type].
	toCase := aModel findObjectById: to.
	toCase ifNotNil: [to := toCase]