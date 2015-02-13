methods
startServer
	"We start all special services for the server, and seaside too."

	self cleanImage.
	Q2LogFile open.
	Q2LogWatchdog start.
	"Q2SoapService default start."
	"Q2MirrorServer stop; startOn: self settings serverMirrorPort asNumber."
	self startSeaside.
	Q2Scheduler start.