start/stop
stop
	"Stop the SOAP core service. This will clear registered services.
	Tell all active plugins that SOAP is stopped."

	SoapHttpSetup stop.
	self model allPluginsDo: [:plugIn | plugIn soapStopped]