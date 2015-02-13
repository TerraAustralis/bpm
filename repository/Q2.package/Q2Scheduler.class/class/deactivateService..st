services
deactivateService: aService

	(Services includes: aService)
		ifFalse: [
			Q2Log info: 'Service already deactivated: ', aService name]
		ifTrue: [
			Services := Services copyWithout: aService.
			aService deactivated.
			Q2Log info: 'Service deactivated: ', aService name]