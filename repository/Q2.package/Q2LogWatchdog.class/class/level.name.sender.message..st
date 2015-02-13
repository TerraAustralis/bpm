as yet unclassified
level: level name: symbol sender: sender message: msg
	"This method looks messy, and it is - but it is written to be as fast as possible."

	"Is this message over the threshold?"
	| message now |
	level <= Threshold
		ifTrue: [
			message := DateAndTime now displayString,' - ', symbol, '(', level asString, '): ', msg, ' (', sender class name, ')'.
			Buffer
				ifNotNil: [
					"Add message to the buffer and possibly send it if the timer is out."
					Buffer nextPutAll: message.
					now := Q2TimeStamp now asInteger.
					"Is the timer out? If so, send the buffer."
					 now > Timer ifTrue: [
						self sendBuffer]]
				ifNil: [
					"No buffer to send nor add message to. Set the timer for one minute and send the message."
					Timer := Q2TimeStamp now asInteger + self collectMinutes.
					Buffer := String new writeStream.
					self sendMessage: message]]
		ifFalse: [
			"Ok, no message this time - do we have a buffer to send when the timer goes out?"
			Buffer ifNotNil: [
				now := Q2TimeStamp now asInteger.
				"Is the timer out? If so, if the buffer has content - send the buffer and reset Timer. Otherwise nil Buffer."
				now > Timer ifTrue: [
					Buffer isEmpty
						ifTrue: [Buffer := nil]
						ifFalse: [self sendBuffer]]]]