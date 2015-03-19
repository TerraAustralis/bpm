comanche
sessionTimedOut: session
	"Delegate if implemented."
	
	(model respondsTo: #sessionTimedOut:) ifTrue:[ model sessionTimedOut: session ]