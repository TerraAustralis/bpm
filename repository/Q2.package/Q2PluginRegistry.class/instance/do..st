as yet unclassified
do: aBlock
	self plugins do: [:each | aBlock value: each]