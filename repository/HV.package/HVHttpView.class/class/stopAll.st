start-stop
stopAll
	"Stop and unregister all services."

	^ApplicationService services do: [:s | s unregister]