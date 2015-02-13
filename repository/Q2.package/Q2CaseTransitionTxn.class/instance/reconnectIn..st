transactions
reconnectIn: aModel
	"Find transition."

	super reconnectIn: aModel.
	transition := case workflow findTransitionById: transition