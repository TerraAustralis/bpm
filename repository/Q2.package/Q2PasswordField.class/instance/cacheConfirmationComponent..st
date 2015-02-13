value and cache
cacheConfirmationComponent: fieldComponent
	"Get confirmation value."

	fieldComponent at: #confirmation ifAbsent: [nil]