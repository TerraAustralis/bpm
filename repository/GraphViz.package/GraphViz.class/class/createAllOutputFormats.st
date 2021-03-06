samples
createAllOutputFormats
	"Generate all the output formats listed in GraphViz documentation (as of dot version 2.2)."

	"GraphViz createAllOutputFormats"

	| d viz |
	d _ Dictionary new.
	viz _ self new
		beDirected;
		name: #directedGraphSample1;
		add: #graph with: {#ratio -> '0.5'};
		add: #node with: {#fontsize -> 10};	
		add: #Smalltalk -> #Squeak;
		add: #Smalltalk -> 'C++';
		add: 'C++' -> #Java;
		add: #Java -> 'C#';
		yourself.
	self outputFormats do: [:t | d at: t put: (viz asOutputType: t)].
	^ d