responses
redirectToLocal: page
	"Make a redirection to another page in this view,
	equaling another method in this class."

	^self redirectTo: (self originalUrlFor: page)