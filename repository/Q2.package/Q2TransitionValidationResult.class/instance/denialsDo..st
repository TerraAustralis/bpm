private
denialsDo: aBlock
	deniedTransitions do: [:coll |
		coll do: [:denial |
			aBlock value: denial]]