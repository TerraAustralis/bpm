initialize-release
setExpireTime

	| timeout |

	timeout :=  self inifileSeconds.

	expireTime := timeout = 0 ifTrue: [ nil ] ifFalse: [ Time totalSeconds + timeout ]