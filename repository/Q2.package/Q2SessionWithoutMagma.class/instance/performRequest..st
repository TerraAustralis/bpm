spoof pool
performRequest: aRequest
	"This adds the trick of providing the session's translator on every #translated message
      during performing a request."

	self becomeTheSessionForTheCurrentProcess.
	
	Q2CurrentTranslator
		use: self translator
		during: [
			self commit: [ super performRequest: aRequest ]
			].