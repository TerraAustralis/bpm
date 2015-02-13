as yet unclassified
renderContentOn: html
	| activated deactivated button serviceIsRunning |
	super renderContentOn: html.

	activated := Q2Scheduler activeServices.
	deactivated := Q2Scheduler allServices copyWithoutAll: activated.

	html form: [
		html heading level2; with: 'Active services'.
		html table: [
			activated ifEmpty: [html text: '<none>'].
			activated do: [:service |
				html tableRow: [
					serviceIsRunning := service isRunning.
					html tableData: [html text: service serviceName].
					html tableData: [
						button := html button: 'Deactivate' callback: [service deactivate] tooltip: 'Deactivating the service will stop it from running on regular intervals'].
						serviceIsRunning ifFalse: [button disabled].
					html tableData: [
						serviceIsRunning
							ifTrue: [
								html button: 'Terminate' callback: [service terminate] tooltip: 'Terminating the service means interrupting the current activation of it, it will still be running regularly']
							ifFalse: [
								html text: 'Starts in ', service remainingSeconds asString, ' seconds.']].
					html tableData: [
						html button: 'Trigger' callback: [service clear] tooltip: 'Manually run the service prematurely']
				]
			]
		].
		html heading level2; with: 'Deactivated services'.
		html table: [
			deactivated ifEmpty: [html text: '<none>'].
			deactivated do: [:service |
				html tableRow: [
					html tableData: [html text: service serviceName].
					html tableData: [html button: 'Activate' callback: [service activate] tooltip: 'Make the service run regularly']
				]
			]
		]
	]