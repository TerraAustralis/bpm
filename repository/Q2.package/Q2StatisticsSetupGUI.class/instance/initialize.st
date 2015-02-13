initialization
initialize
	super initialize.
	resolution _ self resolutions first.
	processes _ Q2Session processesOf: self.
	process _ processes first.