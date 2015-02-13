instance creation
buildReadStrategyOn: strategy
  
	strategy minimumDepth: 2. 

	strategy forVariablesNamed: 'definition stats' onAny: MaRootAnchor readToDepth: -5.
 
	 self buildReadStrategyAggressiveOn: strategy