as yet unclassified
handleError: anError

	Q2Session current application deploymentMode
		ifTrue: [
			WARenderLoop new
			call: (Q2ErrorComponent error: anError)
			withToolFrame: false ]
		ifFalse: [
			super handleError: anError ]