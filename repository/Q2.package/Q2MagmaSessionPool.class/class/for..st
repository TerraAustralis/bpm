initialize-release
for: location

	^ locationPools at: location ifAbsentPut: [ self newFor: location ]