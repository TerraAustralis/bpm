instance creation
new
	"This relies on that at least model and viewClass
	is set in initialize. Note: in later Squeaks this
	method is superfluous, but it makes it work in
	old Squeaks too."

	^super basicNew initialize