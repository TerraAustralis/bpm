sample
loadDemo3Customer
	|  inbox active inactive |

	self name: 'Workflow'.
	inbox := self newStage: 'New'.
"	inbox addGatekeeper: (self process findUserNamed: '_oden'); addGatekeeper: (self process findUserNamed: '_tor')."
	active := self newStage: 'Active'.
	inactive := self newStage: 'Inactive'.

	inactive isClosed: true.

	inbox newTransition: 'Activate' to: active.
	active newTransition: 'Deactivate' to: inactive.
	inactive newTransition: 'Reactivate' to: active