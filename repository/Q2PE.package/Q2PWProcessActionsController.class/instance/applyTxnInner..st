as yet unclassified
applyTxnInner: aTxn
 
	 
	 aTxn validate.  

"doing my own commit"

	Q2Session current magmaSession commit: [ aTxn apply ].	
 
"doing it properly"
	"aTxn model applyTxn: aTxn."