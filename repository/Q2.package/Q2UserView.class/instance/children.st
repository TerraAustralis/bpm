initialize-release
children
	^super children , (editor ifNotNil: [Array with: editor] ifNil: [#()])