as yet unclassified
allowedToSeeAll
	| currentUser |
	currentUser := model"(User)" session currentUser.
	^ currentProcess isAdmin: currentUser. 
	"return 'true' when process admins looks at the user's permissions."