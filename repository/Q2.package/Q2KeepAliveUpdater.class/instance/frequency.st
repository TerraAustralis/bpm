as yet unclassified
frequency
	"Update frequency in seconds. Default: half minute before session timeout or half of the session timeout"
	^frequency ifNil: [ | sessionTimeout |
		sessionTimeout := self application cache expiryPolicy configuration at: #cacheTimeout.
		frequency := sessionTimeout - 30 max: (sessionTimeout // 2 + 1) ]