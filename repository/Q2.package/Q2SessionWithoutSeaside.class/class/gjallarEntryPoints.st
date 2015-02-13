barf6
gjallarEntryPoints

	^ WADispatcher default handlers
	
	"^ WADispatcher default entryPoints 
		select: [ :e | e isApplication and: [ e configuration allAttributes anySatisfy: [ :c | c group = #magma]]]"