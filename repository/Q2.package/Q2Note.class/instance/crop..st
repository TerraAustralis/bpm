private
crop: aString 
	"Cut off lines longer than 72 unless they begin with $>."

	| result start end width |
	width := 72.
	result := WriteStream on: (String new: aString size * 50 // 49).
	aString
		linesDo: [:line | (line beginsWith: '>')
				ifTrue: ["it's quoted text; don't wrap it"
					result nextPutAll: line.
					result cr]
				ifFalse: ["regular old line. Wrap it to multiple lines"
					start := 1.
					"output one shorter line each time through this loop"
					[start + width <= line size]
						whileTrue: ["find the end of the line"
							end := start + width - 1.
							[end >= start
								and: [(line at: end + 1) isSeparator not]]
								whileTrue: [end := end - 1].
							end < start
								ifTrue: ["a word spans the entire width!"
									end := start + width - 1].
							"copy the line to the output"
							result
								nextPutAll: (line copyFrom: start to: end).
							result cr.
							"get ready for next iteration"
							start := end + 1.
							(line at: start) isSeparator
								ifTrue: [start := start + 1]].
					"write out the final part of the line"
					result
						nextPutAll: (line copyFrom: start to: line size).
					result cr]].
	^ result contents