synch
reconnectIn: aModel

	super reconnectIn: aModel.
	predicates do: [:each | each reconnectIn: aModel]