emitters
level: level name: symbol sender: sender message: msg
	"Default emitter is to just output in Transcript. We respect the transcriptThreshold."
	
	level <= transcriptMaxLevel ifTrue: [
		Transcript show:
			DateAndTime now displayString,' - ',
			symbol, '(', level asString, '): ', msg, ' (', sender class name, ')'; cr ]