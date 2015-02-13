private
merge: newIndexFileName with: oldIndexFileName

	| mergeIndexFileName cmd |
	mergeIndexFileName := self temporaryFileName.
	cmd := '"{1}" -M "{2}" "{3}" "{4}"' format: {
			self swishEPath.
			newIndexFileName.
			oldIndexFileName.
			mergeIndexFileName}.
	ProcessWrapper new
		startWithCommand: cmd;
		waitForExitFor: self timeOutInMilliseconds.
	^mergeIndexFileName