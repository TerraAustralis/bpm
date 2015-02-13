sample
loadDemo3Letter
	|  inbox one two three waiting done disabled |

	self name: 'Workflow'.
	inbox := self newStage: 'Inbox'.
	one := self newStage: 'Mail one'.
"	inbox addGatekeeper: (self process findUserNamed: '_oden'); addGatekeeper: (self process findUserNamed: '_tor')."
	two := self newStage: 'Mail two'.
	three := self newStage: 'Mail three'.

	waiting := self newStage: 'Waiting'.
	done := self newStage: 'Done'.
	disabled := self newStage: 'Disabled'.

	disabled isClosed: true.
	done isClosed: true.

	inbox newTransition: 'Escalate' to: one.
	one newTransition: 'Escalate' to: two.
	two newTransition: 'Escalate' to: three.

	one newTransition: 'Done' to: done.
	two newTransition: 'Done' to: done.
	three newTransition: 'Done' to: done.

	one newTransition: 'Wait' to: waiting.
	two newTransition: 'Wait' to: waiting.
	three newTransition: 'Wait' to: waiting.

	waiting newTransition: 'Done' to: done.
	waiting newTransition: 'Escalate to mail two' to: two.
	waiting newTransition: 'Escalate to mail three' to: three.
	waiting newTransition: 'Disable' to: disabled.

	two newTransition: 'Disable' to: disabled.
	three newTransition: 'Disable' to: disabled.