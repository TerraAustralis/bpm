initialize-release
initialize
	| oldEmitters |
	oldEmitters := emitters.
	
	emitters := Set new.
	transcriptMaxLevel := 5. "We do not emit info and debug to Transcript by default"
	globalMaxLevel := 7. 	"All messages are emitted"
	notifierMaxLevel := 0.	"No messages trigger notifier"
	guard := Q2MonitorProxy new.

	UseTranscript ifTrue: [self addEmitter: self]. "simple Transcript"

	oldEmitters ifNotNil: [oldEmitters do: [:e | e reInitialize]].