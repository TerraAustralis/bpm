roles
relatedUsers
	| related |
	related := (roles collect: [:role | role key]) asSet.
	(self notebook notes) do: [:note | related add: note author].
	^ related select: [:each | each isUser]