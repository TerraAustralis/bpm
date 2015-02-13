validation
allowedFor: aUser in: aCase
	"Return if this user is allowed to perform this transition
	based on permissions and roles of the user in this case.
	User must be able to write the target stage. Source stage
	and the case itself has already been verified.
	If no roles are specified anyone can perform the transition,
	otherwise the user must have a matching role."

	^(to writeCheck) notNil and: [
		roles isEmptyOrNil or: [
			(roles intersection: (aCase rolesForUser: aUser)) notEmpty]]