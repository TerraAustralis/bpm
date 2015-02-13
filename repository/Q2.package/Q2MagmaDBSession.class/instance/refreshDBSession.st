magma
refreshDBSession
	"We only abort it if we already have one."

	magmaSession ifNil: [self obtainMagmaSession].
	magmaSession abort.