render
renderContentOn: html 

	| ableToSync localTxns serverTxnMarker txnsToDownload localText serverText |
	html heading: label.

	self flag: #q2MirroringTodo. " 
		what to do with mirrorTransactions ?.
		reconsider whole synching approach.
		 "

	localTxns := self model transactionLog size.
	localText := localTxns asString, ' local transactions to upload'.
	serverText := Q2Object pingServer
					ifTrue: [
						ableToSync := true.
						serverTxnMarker := Q2Object lastTransactionNumber.
						txnsToDownload := serverTxnMarker - self model lastMasterTxnNumber.
						txnsToDownload asString, ' server transactions to download']
					ifFalse: [
						ableToSync := false. 'Not available online'].

	html label: 'Local mirror' data: localText.
	html label: 'Server' data: serverText. 

	ableToSync ifTrue: [
		html form: [
			html label: 'Update from server'
				field: [:id | html submitButton callback: [self update]; text: 'Update now']
				tooltip: 'Download server transactions only'.
			html label: 'Full synchronization'
				field: [:id | html submitButton callback: [self synch]; text: 'Synch now']
				tooltip: 'Download server transactions and upload local transactions']]