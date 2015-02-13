*q2
disconnect
	"Tell all my elements to disconnect themselves."

	^self do: [:each | each disconnect]