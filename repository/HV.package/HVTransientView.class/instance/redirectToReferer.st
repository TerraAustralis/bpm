responses
redirectToReferer
	"Redirect to referer URL. This has problems with IE
	since it sends referer in a barfed partially unescaped iso encoding."

	^ self redirectTo: request referer