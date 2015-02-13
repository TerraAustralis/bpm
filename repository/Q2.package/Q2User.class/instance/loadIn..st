cases
loadIn: aProcess
	"Return number of assigned cases in given process."

	^(aProcess casesForResponsible: self) size