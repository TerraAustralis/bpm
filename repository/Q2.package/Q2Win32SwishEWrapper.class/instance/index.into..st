private
index: aSwishEString into: anIndexFileName

	ProcessWrapper new
		useStdout;
		startWithCommand: (
			'"{1}" -S prog -f "{2}" -i stdin' format: {
				self swishEPath. 
				anIndexFileName });
		nextPutAll: aSwishEString;
		close;
		waitForExitFor: self timeOutInMilliseconds