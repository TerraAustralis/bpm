services
activateService: aService

	(Services includes: aService)
		ifTrue: [
			Q2Log info: 'Service already active: ', aService name]
		ifFalse: [
			Services := Services copyWith: aService.
			aService activated.
			Q2Log info: 'Service activated: ', aService name]