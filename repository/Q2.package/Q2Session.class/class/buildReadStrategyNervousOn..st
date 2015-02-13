instance creation
buildReadStrategyNervousOn: strategy
 
"
TESTING - GET SYSTEM READY

Q2Session current logging.
15 timesRepeat: [Q2Log info: '' sender: '' ].
Q2Session current releaseMagmaSession.
Q2MagmaSessionPool cleanUp.  
MagmaSession cleanUp.  

TESTING - START EXPLORING

| r |
(Array with: Q2Session current magmaSession readStrategy 
with: ([ r := Q2Session current model  ] timeToRun) with: r) explore   
 
TESTING - ADJUST AND UPDATE STRATEGY
 
[ Q2Session current updateReadStrategy ] timeToRun.
Q2Session current stubOut: Q2Session current model.      
This code starts from scratch and logs the Object realizations.
"
 	strategy minimumDepth: 1. "perhaps prefer 0"
"
	We set the minimum depth at so that any one database hit, at least gets the object 
	and its instvar values, 

	In the log we have the first hi which retrieves the model in 15ms

2007-06-14T01:38:53.426+02:00 - debug(7): -- 1 --
2007-06-14T01:38:53.427+02:00 - debug(7):  [0ms] Reading 'MaRootAnchor oid:4067064'
2007-06-14T01:38:53.428+02:00 - debug(7): 1: [2ms] (1/1/2) MaRootAnchor-root = oid:4067067
2007-06-14T01:38:53.43+02:00 - debug(7): 2: [4ms] (2/2/3) Q2RepositoryRoot-tally = oid:4067084
2007-06-14T01:38:53.432+02:00 - debug(7): 3: [5ms] (2/2/3) Q2RepositoryRoot-array = oid:4067085
2007-06-14T01:38:53.434+02:00 - debug(7): 4: [7ms] (1/1/2) MaRootAnchor-definition = MagmaRepositoryDefinition a MagmaRepositoryDefinition 
2007-06-14T01:38:53.44+02:00 - debug(7): 5: [14ms] (1/1/2) MaRootAnchor-stats = oid:4067065
2007-06-14T01:38:53.442+02:00 - debug(7): 6: [15ms] (2/2/3) OrderedCollection-array = oid:4067066
 
	strategy onAny: Q2RepositoryRoot readToDepth: 1.
	strategy	 onAny: Q2Model readToDepth: -2.
	strategy forVariableNamed: 'caseCounter' onAny: Q2Model readToDepth: 99.

 	Notice the Q2RepositoryRoot-array and tally were both retrieved.
	we have the Model instance.

	If Q2RepositoryRoot is 1 then we get the model instance but none of its contents.
	If Q2RepositoryRoot is 2 or Q2Model's is 1 then then we get the model instance and all of its contents in the first hit.
	If Q2Model mindepth is not defined then interestingly it doesnt get read to min depth 1 
	on the first hit this is because the db is hit at 'root' first to min depth 1, 
	which has obtained the unpopulated model, 
	So therefore 'Q2Session current root model' does not generate a further hit.

	If you use the explorer to look at the model, opening it generates 22 hits, one for each
	instVar that the explorer is seeking to display.

	Overall it is difficult to get a big first hit without accidentally loading some larger stuff
	that we might not want.
"
 
"MISCELLANEOUS"
strategy onAny: Q2TimeStamp readToDepth: 99.
strategy onAny: BlockContext readToDepth: 99.