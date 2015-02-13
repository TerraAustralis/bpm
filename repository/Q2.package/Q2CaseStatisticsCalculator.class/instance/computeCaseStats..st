calculating
computeCaseStats: caseTxnsAssoc
		"Computes statistics as described in class comment.  All statistics are computed together to be more efficient.
		 Of course this makes the code much more complex and difficult to modify.  
		Note that errors here will usually cause invalid statistics to be computed,
          likely without the user being able to detect that there are problems.
	    Thus, if you modify this code, it is mandatory that you run tests using 
         mockTransactions on large data sets to verify that the new code is correct. 
		"
		
	| case periodTxns transactions startStage endStage firstTxnIsNew createdTimePoint veryFirstOpenTimePoint
	 firstTxn lastTxn firstOpenTxn veryFirstTxn veryFirstOpenTxn resolutionTxn firstSetResponsibleTxn  |

	firstTxn := lastTxn := veryFirstTxn := firstOpenTxn := veryFirstOpenTxn := setResponsibleTxn := resolutionTxn := nil.
	firstTxnIsNew := false.
	case := caseTxnsAssoc key.
	transactions := case transactions.
	veryFirstTxn := transactions first.
	createdTimePoint := veryFirstTxn timestamp.
	periodTxns := caseTxnsAssoc value.
	self resetStatistics.
					"Find first, last, and and firstOpened transactions of period"
	periodTxns do: [:txn |
		txn isCaseCreateOrTransitionTxn  ifTrue:  [
			firstTxn ifNil: [firstTxn := txn].
			resolutionTxn := lastTxn.
			lastTxn := txn.
			(txn isStatsNew not and: [firstOpenTxn isNil]) ifTrue: [firstOpenTxn := txn].
			]
		ifFalse: [
			(txn isSetResponsibleTxn and: [setResponsibleTxn isNil])
				ifTrue:  [setResponsibleTxn := txn] ].
		].

	lastTxn ifNotNil: [isOpen := lastTxn isOpen].
	firstTxn ifNotNil:  [			"compute wasCreated, wasOpened, wasClosed, and wasReopened"
		firstTxn isCaseCreateTxn ifTrue: [
			wasCreated := true.
			firstTxnIsNew := true.
			endStage := (lastTxn == firstTxn) ifTrue: [nil]  ifFalse: [lastTxn transition to] ]
		ifFalse: [				"a transition transaction"
			startStage := firstTxn transition from.
			endStage := lastTxn transition to.
			firstTxnIsNew := startStage isNew.
			].
		endStage ifNotNil: [
			firstTxnIsNew ifTrue: [
				endStage isNew ifFalse:  [
					wasOpened := true.
					wasClosed := endStage isClosed] ]
			ifFalse: [
				wasClosed := startStage isOpen and: [endStage isClosed].
				wasReopened := startStage isClosed and: [endStage isClosed not] ].
			].
		].

	(wasClosed or: [firstOpenTxn notNil]) ifTrue: [				"FindSet veryFirstOpenTxn and set timeVeryFirstOpen"
		(transactions first = firstTxn and: [firstOpenTxn notNil]) ifTrue: [
			veryFirstOpenTxn := firstOpenTxn]
		ifFalse: [
				| openAfterCreationIndex found openStage |	
			openAfterCreationIndex := 2.
			found := false.
			[found] whileFalse: [
				((veryFirstOpenTxn := transactions at: openAfterCreationIndex) isTransitionTxn) ifTrue: [
					openStage := veryFirstOpenTxn transition to.
					found := openStage isOpen or: [openStage isClosed] ].
				openAfterCreationIndex := openAfterCreationIndex + 1.
				].
			].
		veryFirstOpenTimePoint := veryFirstOpenTxn timeStamp.
		firstOpenTxn == veryFirstOpenTxn ifTrue: [
			timeToOpen := veryFirstOpenTxn timeStamp - createdTimePoint].			
		].		

				"compute (if approapriate) timeToClose, timeToOpen, periodOpen, and timeToSetResponsible"
	wasClosed ifTrue: [
			| validationTxnIndex |
		timeToClose := lastTxn timeStamp - createdTimePoint.
		periodOpen := lastTxn timeStamp - veryFirstOpenTxn timeStamp.
		(veryFirstOpenTxn = lastTxn) ifFalse: [
			resolutionTxn ifNil: [
				validationTxnIndex := transactions size.
				[(transactions at: validationTxnIndex) = firstTxn] whileFalse: [
					validationTxnIndex := validationTxnIndex - 1].
				validationTxnIndex := validationTxnIndex - 1.
				resolutionTxn := transactions at: validationTxnIndex.
				[resolutionTxn isCaseCreateOrTransitionTxn] whileFalse: [
					validationTxnIndex := validationTxnIndex - 1.
					resolutionTxn := transactions at: validationTxnIndex].
				].
			timeToResolve := resolutionTxn  timeStamp - veryFirstOpenTimePoint.
			timeToValidateResolution := lastTxn timeStamp - resolutionTxn timeStamp.
			].
		].
				
	setResponsibleTxn ifNotNil:  [
		firstSetResponsibleTxn _ transactions detect: [:rTxn | rTxn isSetResponsibleTxn].
		(firstSetResponsibleTxn = setResponsibleTxn) ifTrue: [
			timeToSetResponsible := setResponsibleTxn timestamp - createdTimePoint]
		ifFalse: [setResponsibleTxn _ nil].
		].