services
activateServices: aColl
	"Activate a collection of services."

	aColl do: [:service | self activateService: service]