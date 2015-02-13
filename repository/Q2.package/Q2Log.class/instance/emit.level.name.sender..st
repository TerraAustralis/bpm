private
emit: msg level: level name: symbol sender: anObject
	"Pick out the sender object unless supplied and let
	all emitters emit something if it is below the globalMaxLevel."

	| sender |
	level <= notifierMaxLevel ifTrue: [super error: msg].
	level <= globalMaxLevel ifTrue: [
		"sender := anObject ifNil: [thisContext sender sender sender receiver]."
self flag: #gemstone. "thisContext is not supported on GemStone."
		sender := anObject ifNil: ['UnknownSender'].
		guard monitor critical: [
			emitters do: [:blockOrObject |
				blockOrObject isBlock ifTrue: [
					blockOrObject value: level value: symbol value: sender value: msg]
				ifFalse: [
					blockOrObject level: level name: symbol sender: sender message: msg]]]]