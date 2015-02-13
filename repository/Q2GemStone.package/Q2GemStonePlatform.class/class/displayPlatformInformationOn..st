platform info
displayPlatformInformationOn: html

	html label: 'Transaction mode' data: (System transactionMode) asString.
	html label: 'in transaction' data: (System inTransaction) asString.
	html label: 'working directory' data: (self workingDirectory pathName).
	html label: 'temporary directory' data: (self tempDirectory pathName).