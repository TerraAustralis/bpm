services
terminateAllServices

	self runningServices copy do: [:service | self terminateService: service]