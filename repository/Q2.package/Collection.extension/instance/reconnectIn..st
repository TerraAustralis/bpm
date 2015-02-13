*q2
reconnectIn: aModel
	"Reconnect all my elements."

	^self collect: [:each | aModel findObjectById: each]