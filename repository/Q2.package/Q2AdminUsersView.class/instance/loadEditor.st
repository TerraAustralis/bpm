private
loadEditor
	"Populate the multiform editor with the proper buffer."

	editor edit: selectedUser adminEditFormBuffer.

	editor noButtons; addDefaultButtonsFor: self.
	selectedUser isAnybody ifFalse: [
		selectedUser canLogin
			ifTrue: [editor buttons button: 'Deactivate' callback: [self deactivateSelectedUser] tooltip: 'This disables the user so that the user can not login anymore']
			ifFalse: [editor buttons button: 'Activate' callback: [self activateSelectedUser] tooltip: 'This enables the user so that the user can login again']].
	
	editor buttons button: 'Save as new' callback: [self saveAsNewUser] tooltip: 'Create a new user in the system'