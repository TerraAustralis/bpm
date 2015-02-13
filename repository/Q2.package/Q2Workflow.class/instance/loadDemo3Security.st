sample
loadDemo3Security
	|  inbox open removed paused ready repaid |

	self name: 'Workflow'.
	inbox := self newStage: 'Inbox'.
"	inbox addGatekeeper: (self process findUserNamed: '_oden'); addGatekeeper: (self process findUserNamed: '_tor')."
	open := self newStage: 'Open'.
	removed := self newStage: 'Removed'.
	paused := self newStage: 'Paused'.
	ready := self newStage: 'Ready'.
	repaid := self newStage: 'Repaid'.

	ready isClosed: true.
	repaid isClosed: true.
	removed isClosed: true.

	inbox newTransition: 'Start work' to: open.
	open newTransition: 'Remove' to: removed.
	paused newTransition: 'Resume' to: open.
	paused newTransition: 'Remove' to: removed.
	paused newTransition: 'Ready' to: ready.
	ready newTransition: 'Reopen' to: open.
	removed newTransition: 'Reopen' to: open.
	open newTransition: 'Pause' to: paused.
	open newTransition: 'Ready' to: ready.
	ready newTransition: 'Repaid' to: repaid