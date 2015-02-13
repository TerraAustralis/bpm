as yet unclassified
reset
	self locationPools do: [ :pool |  pool cleanPool].
	self initialize.