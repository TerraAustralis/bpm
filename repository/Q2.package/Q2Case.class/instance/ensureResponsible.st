roles
ensureResponsible
	"Forcefully set a responsible. We let the stage decide.
	It can stay as nobody (pickResponsible returns nil) if
	the Process allows that."

	self setResponsible: self pickResponsible