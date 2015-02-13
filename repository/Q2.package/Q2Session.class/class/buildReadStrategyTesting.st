instance creation
buildReadStrategyTesting
 
"
TESTING - GET SYSTEM READY

Q2Session current logging.
15 timesRepeat: [Q2Log info: '' sender: '' ].
Q2MagmaSessionPool cleanUp.  
 
TESTING - START EXPLORING

| r |
(Array with: Q2Session current magmaSession readStrategy 
with: ([ r := Q2Session current model  ] timeToRun) with: r) explore   
 
TESTING - ADJUST AND UPDATE STRATEGY
 
[ Q2Session current updateReadStrategy ] timeToRun.
Q2Session current stubOut: Q2Session current model.      
This code starts from scratch and logs the Object realizations.
 

"