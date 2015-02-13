services
deactivateAllServices

	Services copy do: [:service | self deactivateService: service]