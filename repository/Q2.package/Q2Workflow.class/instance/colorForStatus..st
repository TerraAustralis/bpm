graphviz
colorForStatus: aStatus

	"something for settings?"

	StatusColors ifNil: [ 
		StatusColors := Dictionary new
					at: #new put: #orange;
					at: #inbox put: #red;
					at: #closed put: #paleGreen;
					yourself
	].

	^ StatusColors at: aStatus ifAbsent: #grey