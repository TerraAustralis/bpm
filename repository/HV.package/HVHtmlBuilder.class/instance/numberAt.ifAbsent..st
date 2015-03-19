private
numberAt: var ifAbsent: block
	"Customized version to get an expected number."

	^(fields at: var ifAbsent: [^block value]) asNumber