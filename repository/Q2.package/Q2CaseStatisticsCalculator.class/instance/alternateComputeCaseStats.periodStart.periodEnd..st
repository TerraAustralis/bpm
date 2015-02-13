verifying
alternateComputeCaseStats: aQ2Case  periodStart: periodStart  periodEnd: periodEnd
"
NOTE:  THIS METHOD SHOULD NOT BE USED TO COMPUTE STATS EXCEPT FOR TESTING PURPOSES.
Computes same values as #computeCaseStats:  (see comments there) but processes transactions in reverse order.  
          Thus the stats can be computed in two different ways.  Class Q2MockStatsSession has utilities which cause 
	     both methods to be called on the same input and compares the results to ensure that they compute the same values.
"
	
		| case transactions veryFirstOpenTimePoint txn index createdTimePoint
	 firstTxn lastTxn firstOpenTxn veryFirstTxn veryFirstOpenTxn resolutionTxn priorTestableTxn
	resolutionTxnIndex veryFirstOpenIndex |

	firstTxn := lastTxn := veryFirstTxn := firstOpenTxn := veryFirstOpenTxn := setResponsibleTxn := resolutionTxn := nil.
	self resetStatistics.
	case := aQ2Case.
	transactions := case transactions.
	veryFirstTxn := transactions first.
	createdTimePoint := veryFirstTxn timeStamp.
	index := transactions size.
	[(index > 0) and: [(txn := transactions at: index) timeStamp >= periodEnd]]  
		whileTrue:  [index := index - 1].
					"Find first, last, firstOpened, setResponsible, and resolution transactions of period."
	[(index > 0) and: [(txn := transactions at: index) timeStamp >= periodStart]]  
		whileTrue: [
			txn isCaseCreateOrTransitionTxn ifTrue:  [
				resolutionTxn ifNil: [
					lastTxn ifNil: [lastTxn := txn]
						ifNotNil: [
							resolutionTxn := txn.
							resolutionTxnIndex _ index] ].	
				firstTxn := txn.
				txn isStatsNew ifFalse: [
					veryFirstOpenTxn := txn.
					veryFirstOpenIndex _ index].
				]
			ifFalse: [txn isSetResponsibleTxn ifTrue:  [setResponsibleTxn := txn] ].
			index := index - 1.
			].

					"Find veryFirstOpenTxn and priorTestableTxn of period. 
					 Erase setResponsibleTxn if needed.  Set resolutionTxn if needed"
	firstOpenTxn := veryFirstOpenTxn.
	priorTestableTxn := nil.
	[index > 0] whileTrue: [
		txn _ transactions at: index.
		txn isCaseCreateOrTransitionTxn ifTrue:  [
			(resolutionTxn isNil and: [lastTxn notNil]) ifTrue:  [
				resolutionTxn := txn.
				resolutionTxnIndex _ index].
			priorTestableTxn ifNil: [priorTestableTxn := txn].
			(txn isStatsNew) ifFalse: [
				veryFirstOpenTxn := txn.
				veryFirstOpenIndex _ index].
			]
		ifFalse: [txn isSetResponsibleTxn ifTrue:  [setResponsibleTxn := nil] ].		
		index := index - 1.
		].

	firstTxn ifNotNil:  [			"Compute wasCreated, wasOpened, wasClosed, and wasReopened"
		firstTxn isCaseCreateTxn ifTrue: [wasCreated := true].
		lastTxn ifNotNil: [isOpen := lastTxn isOpen].
		priorTestableTxn ifNil: [		"firstTxn must be createTransaction"
			lastTxn ifNotNil: [
				wasClosed := lastTxn isClosed.
				wasOpened := lastTxn isStatsNew not.
				wasReopened := false.
				].
			]
		ifNotNil: [
			wasClosed := (priorTestableTxn isClosed not) and: [lastTxn isClosed].
			wasOpened := (priorTestableTxn isStatsNew) and: [lastTxn isStatsNew not].
			wasReopened := (priorTestableTxn isClosed) and: [lastTxn isClosed not].
 			].
		].

	veryFirstOpenTxn ifNotNil: [				"Set veryFirstOpenTimePoint and timeToOpen"
		veryFirstOpenTimePoint := veryFirstOpenTxn timeStamp.
		firstOpenTxn == veryFirstOpenTxn ifTrue: [
			timeToOpen := veryFirstOpenTimePoint - createdTimePoint].			
		].		

				"compute (if appropriate) timeToClose, timeToOpen, and periodOpen"
	wasClosed ifTrue: [
		timeToClose := lastTxn timeStamp - createdTimePoint.
		periodOpen := lastTxn timeStamp - veryFirstOpenTxn timeStamp.
		"(resolutionTxn notNil and: [lastTxn notNil]) ifTrue:  ["
		(resolutionTxnIndex >= veryFirstOpenIndex) ifTrue: [
			timeToResolve := resolutionTxn  timeStamp - veryFirstOpenTimePoint.
			timeToValidateResolution := lastTxn timeStamp - resolutionTxn timeStamp]. " ]"
		].
				
	setResponsibleTxn ifNotNil:  [timeToSetResponsible := setResponsibleTxn timestamp - createdTimePoint].
	{ periodOpen . timeToOpen . timeToClose . timeToSetResponsible . timeToResolve . timeToValidateResolution } 
		do: [:each |
			(each isNil not and: [each positive not]) ifTrue: [
				self error: 'negative time value'].
			].