private
addSettingFrom: lineString to: section
	| stream key value |
	stream := lineString readStream.
	key := (stream upTo: $=) withBlanksTrimmed.
	value := (stream upToEnd) withBlanksTrimmed.
	section at: key put: (value isEmpty ifTrue: [nil] ifFalse: [
		value = 'true'
			ifTrue: [true]
			ifFalse: [
				value = 'false'
					ifTrue: [false]
					ifFalse: [value]]]).