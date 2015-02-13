instance creation
buildReadStrategyOn: strategy


"TESTING  Dictionary new
| r |
Q2Session current logging.
15 timesRepeat: [Q2Log info: '' sender: '' ].
Q2Session current releaseMagmaSession.
Q2MagmaSessionPool cleanUp.  
MagmaSession cleanUp.
 
(Array with: Q2Session current magmaSession readStrategy 
with: ([ r := Q2Session current model  ] timeToRun) with: r) explore   
 
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
"
 

	strategy onAny: Q2RepositoryRoot readToDepth: 1.
	"strategy	 onAny: Q2Model readToDepth: 0."

"	Notice the Q2RepositoryRoot-array and tally were both retrieved.
	we have the Model instance.

	If Q2RepositoryRoot is 1 then we get the model instance but none of its contents.
	If Q2RepositoryRoot is 2 or Q2Model's is 1 then then we get the model instance and all of its contents in the first hit.
	If Q2Model mindepth is not defined then interestingly it doesnt get read to min depth 1 
	on the first hit this is because the db is hit at 'root' first to min depth 1, 
	which has obtained the unpopulated model, 
	So therefore 'Q2Session current root model' does not generate a further hit.

	If you use the explorer to look at the model, opening it generates 22 hits, one for each
	instVar that the explorer is seeking to display.
"
	
	
"	strategy
			forVariableNamed: 'users' onAny: Q2Model readToDepth: 1;
			forVariableNamed: 'persons' onAny: Q2Model readToDepth: 1;
			forVariableNamed: 'administrators' onAny: Q2Model readToDepth: 1;
 			
			forVariableNamed: 'caseCounter' onAny: Q2Model readToDepth: 99;
 			forVariableNamed: 'useIndexing' onAny: Q2Model readToDepth: 99.
 
	strategy onAny: Q2Person readToDepth: 1.
	strategy forVariableNamed: 'wikiPage' onAny: Q2Person readToDepth: 0.
 
	strategy onAny: Q2User readToDepth: 1.
	strategy forVariableNamed: 'wikiPage' onAny: Q2User readToDepth: 0.
 	strategy forVariableNamed: 'processes' onAny: Q2User readToDepth: 1.
	
     strategy onAny: Q2Category readToDepth: 1.
	strategy forVariableNamed: 'wikiPage' onAny: Q2Category readToDepth: 0.
  
	strategy onAny: PointInTime readToDepth: 99.

	strategy onAny: Q2Filter readToDepth: 99.
	strategy forVariableNamed: 'wikiPage' onAny: Q2Filter readToDepth: 0.

	strategy onAny: Q2Form readToDepth: 2.
	strategy forVariableNamed: 'wikiPage' onAny: Q2Filter readToDepth: 0.

	strategy onAny: Q2Process readToDepth: 1.
	strategy forVariableNamed: 'wikiPage' onAny: Q2Filter readToDepth: 0.

	strategy onAny: Q2FilterStack readToDepth: 99.
	strategy onAny: Q2UserCentral readToDepth: 99.
	strategy onAny: Q2UserSettings readToDepth: 99.
	strategy onAny: BlockContext readToDepth: 99.
	strategy onAny: Q2Workflow readToDepth: 99.

	strategy onAny: Q2Case readToDepth: 99.
	strategy forVariableNamed: 'transactions' onAny: Q2Case readToDepth: 0."

	"If we were to change the minDepth to 0, Dictionaries should still be 1."
	strategy onAny: Dictionary readToDepth: 1.