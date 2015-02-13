as yet unclassified
setUp

	tempDir _ FileDirectory default directoryNamed: 'graphVizTestTemp'.
	tempDir assureExistence.
	graph _ GraphViz new.
	graph generator outputPath: tempDir fullName