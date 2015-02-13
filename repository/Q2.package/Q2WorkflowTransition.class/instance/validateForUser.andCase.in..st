validation
validateForUser: aUser andCase: aCase in: aValidation
	"Validate if this user is allowed to perform this transition
	based on permissions and roles of the user in this case
	and if the transition is valid to make at this time."

	(self processSetting: #allowMovingToStageWithoutWritePermission) ifFalse: [
		(to writeCheck) ifNil: [
			aValidation addDeniedTransition: self message: aUser displayString, ' has no write permission for target stage "', to displayString, '"']].

	roles isEmptyOrNil ifFalse: [
		(roles intersection: (aCase rolesForUser: aUser)) isEmpty ifTrue: [
			aValidation addDeniedTransition: self message: aUser displayString, ' does not have any of the needed roles to perform transitions on this stage']].

	 self validateFor: aCase in: aValidation