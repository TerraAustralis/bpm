validation
allowedAndValidFor: aUser in: aCase
	"Return if this user is allowed to perform this transition
	based on permissions and roles of the user in this case
	and if the transition is valid to make at this time."

	^(self allowedFor: aUser in: aCase) and: [self isValidFor: aCase]