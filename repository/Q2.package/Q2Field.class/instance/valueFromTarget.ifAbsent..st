value and cache
valueFromTarget: aTarget ifAbsent: aBlock
	"Get the untransformed value of the field from a target.
	If there is no value execute aBlock."

	^ accessor valueFromTarget: aTarget ifAbsent: aBlock