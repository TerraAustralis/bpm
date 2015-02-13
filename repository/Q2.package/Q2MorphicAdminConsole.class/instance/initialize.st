as yet unclassified
initialize
	result := 'result'.
	self rootProxy: (Q2RootProxy on: Q2Session current model).